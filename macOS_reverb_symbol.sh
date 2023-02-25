export LIB_REVERB_PATH=/Users/llv23/opt/miniconda3/lib/python3.8/site-packages/reverb
# otool -L $LIB_REVERB_PATH/libpybind.so
install_name_tool -change @loader_path/../_solib_darwin/_U_S_Sreverb_Scc_Cpatterns_Ucc_Uproto___Ureverb_Scc/libpatterns_cc_proto.so $LIB_REVERB_PATH/libpatterns_cc_proto.so $LIB_REVERB_PATH/libpybind.so
install_name_tool -change @loader_path/../_solib_darwin/_U_S_Sreverb_Scc_Creverb_Uservice_Ucc_Uproto___Ureverb_Scc/libreverb_service_cc_proto.so $LIB_REVERB_PATH/libreverb_service_cc_proto.so $LIB_REVERB_PATH/libpybind.so
install_name_tool -change @loader_path/../_solib_darwin/_U_S_Sreverb_Scc_Scheckpointing_Ccheckpoint_Ucc_Uproto___Ureverb_Scc_Scheckpointing/libcheckpoint_cc_proto.so $LIB_REVERB_PATH/libcheckpoint_cc_proto.so $LIB_REVERB_PATH/libpybind.so
install_name_tool -change @loader_path/../_solib_darwin/_U_S_Sreverb_Scc_Cschema_Ucc_Uproto___Ureverb_Scc/libschema_cc_proto.so $LIB_REVERB_PATH/libschema_cc_proto.so $LIB_REVERB_PATH/libpybind.so
# otool -L $LIB_REVERB_PATH/libreverb_service_cc_proto.so
install_name_tool -change @loader_path/../../_solib_darwin/_U_S_Sreverb_Scc_Cschema_Ucc_Uproto___Ureverb_Scc/libschema_cc_proto.so $LIB_REVERB_PATH/libschema_cc_proto.so $LIB_REVERB_PATH/libreverb_service_cc_proto.so
# otool -L $LIB_REVERB_PATH/libcheckpoint_cc_proto.so
install_name_tool -change @loader_path/../../../_solib_darwin/_U_S_Sreverb_Scc_Cschema_Ucc_Uproto___Ureverb_Scc/libschema_cc_proto.so $LIB_REVERB_PATH/libschema_cc_proto.so $LIB_REVERB_PATH/libcheckpoint_cc_proto.so

# otool -L $LIB_REVERB_PATH/cc/ops/libgen_reverb_ops_gen_op.so
install_name_tool -change @loader_path/../../../_solib_darwin/_U_S_Sreverb_Scc_Cpatterns_Ucc_Uproto___Ureverb_Scc/libpatterns_cc_proto.so $LIB_REVERB_PATH/libpatterns_cc_proto.so $LIB_REVERB_PATH/cc/ops/libgen_reverb_ops_gen_op.so
install_name_tool -change @loader_path/../../../_solib_darwin/_U_S_Sreverb_Scc_Creverb_Uservice_Ucc_Uproto___Ureverb_Scc/libreverb_service_cc_proto.so $LIB_REVERB_PATH/libreverb_service_cc_proto.so $LIB_REVERB_PATH/cc/ops/libgen_reverb_ops_gen_op.so
install_name_tool -change @loader_path/../../../_solib_darwin/_U_S_Sreverb_Scc_Scheckpointing_Ccheckpoint_Ucc_Uproto___Ureverb_Scc_Scheckpointing/libcheckpoint_cc_proto.so $LIB_REVERB_PATH/libcheckpoint_cc_proto.so $LIB_REVERB_PATH/cc/ops/libgen_reverb_ops_gen_op.so
install_name_tool -change @loader_path/../../../_solib_darwin/_U_S_Sreverb_Scc_Cschema_Ucc_Uproto___Ureverb_Scc/libschema_cc_proto.so $LIB_REVERB_PATH/libschema_cc_proto.so $LIB_REVERB_PATH/cc/ops/libgen_reverb_ops_gen_op.so