# Lint as: python3
# Copyright 2019 DeepMind Technologies Limited.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

"""Pytype helpers."""

import collections
from typing import Any, Iterable, Mapping, NamedTuple, Optional, Union, get_type_hints

from reverb import pybind
import tensorflow.compat.v1 as tf

from reverb.cc import schema_pb2


Fifo = pybind.FifoSelector
Prioritized = pybind.PrioritizedSelector
Uniform = pybind.UniformSelector

DistributionType = Union[Fifo, pybind.HeapSelector, Prioritized, Uniform]

# Note that this is effectively treated as `Any`; see b/109648354.
SpecNest = Union[
    tf.TensorSpec, Iterable['SpecNest'], Mapping[str, 'SpecNest']]  # pytype: disable=not-supported-yet

_table_info_proto_types = get_type_hints(schema_pb2.TableInfo) or {}

_table_info_type_dict = collections.OrderedDict(
    (descr.name, _table_info_proto_types.get(descr.name, Any))
    for descr in schema_pb2.TableInfo.DESCRIPTOR.fields)
_table_info_type_dict['signature'] = Optional[SpecNest]


"""A tuple describing Table information.

The main difference between this object and a `schema_pb2.TableInfo` message
is that the signature is a nested structure of `tf.TypeSpec` objects,
instead of a raw proto.
"""
TableInfo = NamedTuple('TableInfo', tuple(_table_info_type_dict.items()))
