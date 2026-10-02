
module csc_ahb_bridge_prop(
);
//------------------- Includes------------------------------------------------------------------

//-------------------- Macros ------------------------------------------------------------------
//----------------- Global Variables ----------------------------------------------------------




//----------------- Properties ----------------------------------------------------------------

    //The locked transfer is disabled.
    property no_locked_transfer;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HMASTLOCK_i == 0));
    endproperty
//---------------------------------------------------------------------------------------------

    //A new transaction starts as non-sequential.
    property transfer_start_non_seq;
    @(posedge tc_soc_timer.HCLK_i)
        ( $rose((tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HTRANS_i == 2'b10)) 
	|->
	  $past((tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HTRANS_i == 2'b00)));
    endproperty
//---------------------------------------------------------------------------------------------

    //Burst starts after nonseq transfer.
    property burst_after_non_seq;
    @(posedge tc_soc_timer.HCLK_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HSEL_i == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HREADY_i == 1) && 
	 ( $rose((tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HTRANS_i == 2'b01)) ||  $rose((tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HTRANS_i == 2'b11))) ) 
	|->
	  $past(( (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HSEL_i == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HREADY_i == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HTRANS_i == 2'b10) )));
    endproperty
//---------------------------------------------------------------------------------------------

    //Burst transfer occurs only if HSEL was high in the previous cycle.
    property hsel_high_during_burst;
    @(posedge tc_soc_timer.HCLK_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HSEL_i == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HREADY_i == 1) && 
	 ((tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HTRANS_i == 2'b01) || (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HTRANS_i == 2'b11)) ) 
	|->
	  $past((tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HSEL_i == 1)));
    endproperty
//---------------------------------------------------------------------------------------------

    //Bus must be idle immediately after reset..
    property idle_after_reset;
    @(posedge tc_soc_timer.HCLK_i)
        ( $past(( ~tc_soc_timer.HRESET_n_i)) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HTRANS_i == 2'b00));
    endproperty
//---------------------------------------------------------------------------------------------

    //The csc must not signal a CSC error when no access enable is asserted.
    property no_csc_error_when_no_access_en;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        ((tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.rai_per_acc_en_o == 0) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.rai_per_err_i == 0));
    endproperty
//---------------------------------------------------------------------------------------------

    //HREADYIN must follow HREADYOUT after a transaction.
    property hreadyin_hreadyout_data_phase;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HSEL_i == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HREADY_i == 1) && 
	 ( ~(tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HTRANS_i == 2'b00)) ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HREADY_i == tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HREADYOUT_o) );
    endproperty
//---------------------------------------------------------------------------------------------

    //The slave must put high after reset.
    property ready_after_reset;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        ( $past(( ~tc_soc_timer.HRESET_n_i)) 
	|->
	 tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HREADYOUT_o);
    endproperty
//---------------------------------------------------------------------------------------------

    //hresp is low after reset.
    property hresp_after_reset;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        ( $past(( ~tc_soc_timer.HRESET_n_i)) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HRESP_o == 0));
    endproperty
//---------------------------------------------------------------------------------------------

    //acc_en is low after reset.
    property acc_en_after_reset;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        ( $past(( ~tc_soc_timer.HRESET_n_i)) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.rai_per_acc_en_o == 0));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Top_CSC data_in connectivity from bridge write data.
    property bridge_csc_data_in_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_in == tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.rai_per_wdata_o));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Top_CSC addr connectivity from bridge address.
    property bridge_csc_addr_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.bridge_fsm_haddr_reg_Outp_out_out[31:0])));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Top_CSC AccessSize connectivity from bridge csc_access_size_o.
    property bridge_csc_access_size_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.csc_access_size_o));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Top_CSC wr_en boolean connectivity from bridge acc_en and wr_en.
    property bridge_csc_wr_en_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_wr_en == ( tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.rai_per_acc_en_o && 
	 tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.rai_per_wr_en_o )));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Top_CSC rd_en boolean connectivity from bridge acc_en and wr_en.
    property bridge_csc_rd_en_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == ( tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.rai_per_acc_en_o && 
	 ( ~tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.rai_per_wr_en_o) )));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check bridge rai_per_rdata_i connectivity from Top_CSC data_out.
    property bridge_csc_rdata_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.rai_per_rdata_i == tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check bridge rai_per_ack_i connectivity for always high.
    property bridge_rai_ack_i_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.rai_per_ack_i == 1));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check bridge rai_per_err_i connectivity for always low.
    property bridge_rai_err_i_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.rai_per_err_i == tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_error));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Top_CSC reset connectivity from Inverter_s.
    property bridge_csc_reset_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.HRESET_n_i == tc_soc_timer.HRESET_n_i));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check bridge HADDR_i connectivity from Register Interface AHB haddr.
    property bridge_regif_haddr_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HADDR_i == tc_soc_timer.comp_Reg_IF. SX_AHB_HADDR));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check bridge HWDATA_i connectivity from Register Interface AHB hwdata.
    property bridge_regif_hwdata_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HWDATA_i == tc_soc_timer.comp_Reg_IF.SX_AHB_HWDATA));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check bridge HBURST_i connectivity from Register Interface AHB hburst.
    property bridge_regif_hburst_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HBURST_i == tc_soc_timer.comp_Reg_IF.SX_AHB_HBURST));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check bridge HMASTLOCK_i connectivity from Register Interface  AHB hmastlock.
    property bridge_regif_hmastlock_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HMASTLOCK_i == tc_soc_timer.comp_Reg_IF.SX_AHB_HMASTLOCK));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check bridge HPROT_i connectivity from Register Interface AHB hprot.
    property bridge_regif_hprot_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HPROT_i == tc_soc_timer.comp_Reg_IF.SX_AHB_HPROT));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check bridge HSIZE_i connectivity from Register Interface  AHB hsize.
    property bridge_regif_hsize_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HSIZE_i == tc_soc_timer.comp_Reg_IF.SX_AHB_HSIZE));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check bridge HTRANS_i connectivity from Register Interface  AHB htrans.
    property bridge_regif_htrans_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HTRANS_i == tc_soc_timer.comp_Reg_IF.SX_AHB_HTRANS));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check bridge HWRITE_i connectivity from Register Interface  AHB hwrite.
    property bridge_regif_hwrite_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HWRITE_i == tc_soc_timer.comp_Reg_IF.SX_AHB_HWRITE));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check bridge HSEL_i connectivity from Register Interface  AHB hsel.
    property bridge_regif_hsel_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HSEL_i == tc_soc_timer.comp_Reg_IF.SX_AHB_HSEL));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check bridge HREADY_i connectivity from Register Interface AHB hready.
    property bridge_regif_hready_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HREADY_i == tc_soc_timer.comp_Reg_IF.SX_AHB_HREADY));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check bridge HRDATA_o connectivity to Register Interface AHB hrdata.
    property bridge_regif_hrdata_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HRDATA_o == tc_soc_timer.comp_Reg_IF.SX_AHB_HRDATA));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check bridge HREADYOUT_o connectivity to Register Interface AHB hreadyout.
    property bridge_regif_hreadyout_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HREADYOUT_o == tc_soc_timer.comp_Reg_IF.SX_AHB_HREADYOUT));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check bridge HRESP_o connectivity to Register Interface AHB hresp.
    property bridge_regif_hresp_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HRESP_o == tc_soc_timer.comp_Reg_IF.SX_AHB_HRESP));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW read output CH0_CTRLSTAT_bf_TimEn_CH0_o is wired from Top_CSC BF CH0_CTRLSTAT_bf_TimEn_CH0_out.
    property reg_if_hw_out_CH0_CTRLSTAT_bf_TimEn_CH0_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_TimEn_CH0_out == tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW read output CH0_CTRLSTAT_bf_ResIM_CH0_o is wired from Top_CSC BF CH0_CTRLSTAT_bf_ResIM_CH0_out.
    property reg_if_hw_out_CH0_CTRLSTAT_bf_ResIM_CH0_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_ResIM_CH0_out == tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW read output CH0_CTRLSTAT_bf_CntIM_CH0_o is wired from Top_CSC BF CH0_CTRLSTAT_bf_CntIM_CH0_out.
    property reg_if_hw_out_CH0_CTRLSTAT_bf_CntIM_CH0_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_CntIM_CH0_out == tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW read output CH0_CTRLSTAT_bf_OvfIntEn_CH0_o is wired from Top_CSC BF CH0_CTRLSTAT_bf_OvfIntEn_CH0_out.
    property reg_if_hw_out_CH0_CTRLSTAT_bf_OvfIntEn_CH0_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_OvfIntEn_CH0_out == tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_OvfIntEn_CH0_out));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW write input CH0_ACTVAL_bf_ACTVAL_CH0_i is wired to Top_CSC BF CH0_ACTVAL_bf_ACTVAL_CH0_in.
    property reg_if_hw_in_CH0_ACTVAL_bf_ACTVAL_CH0_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_ACTVAL_CH0_in == tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_in));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW write enable CH0_ACTVAL_bf_ACTVAL_CH0_en_i is wired to Top_CSC BF CH0_ACTVAL_bf_ACTVAL_CH0_peripheral_wr_en.
    property reg_if_hw_en_CH0_ACTVAL_bf_ACTVAL_CH0_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_ACTVAL_CH0_peripheral_wr_en == tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_peripheral_wr_en));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW read output CH0_ACTVAL_bf_ACTVAL_CH0_o is wired from Top_CSC BF CH0_ACTVAL_bf_ACTVAL_CH0_out.
    property reg_if_hw_out_CH0_ACTVAL_bf_ACTVAL_CH0_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_ACTVAL_CH0_out == tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_out));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW read output CH0_MAXVAL_bf_MAXVAL_CH0_o is wired from Top_CSC BF CH0_MAXVAL_bf_MAXVAL_CH0_out.
    property reg_if_hw_out_CH0_MAXVAL_bf_MAXVAL_CH0_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_MAXVAL_CH0_out == tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_MAXVAL_CH0_out));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW read output CH0_CCUCTRL0_bf_CCM0_CH0_o is wired from Top_CSC BF CH0_CCUCTRL0_bf_CCM0_CH0_out.
    property reg_if_hw_out_CH0_CCUCTRL0_bf_CCM0_CH0_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_CCM0_CH0_out == tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM0_CH0_out));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW read output CH0_CCUCTRL0_bf_CapIM0_CH0_o is wired from Top_CSC BF CH0_CCUCTRL0_bf_CapIM0_CH0_out.
    property reg_if_hw_out_CH0_CCUCTRL0_bf_CapIM0_CH0_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_CapIM0_CH0_out == tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM0_CH0_out));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW write input CH0_CCUVAL0_bf_CCUVAL0_CH0_i is wired to Top_CSC BF CH0_CCUVAL0_bf_CCUVAL0_CH0_in.
    property reg_if_hw_in_CH0_CCUVAL0_bf_CCUVAL0_CH0_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_CCUVAL0_CH0_in == tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL0_CH0_in));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW write enable CH0_CCUVAL0_bf_CCUVAL0_CH0_en_i is wired to Top_CSC BF CH0_CCUVAL0_bf_CCUVAL0_CH0_peripheral_wr_en.
    property reg_if_hw_en_CH0_CCUVAL0_bf_CCUVAL0_CH0_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_CCUVAL0_CH0_peripheral_wr_en == tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL0_CH0_peripheral_wr_en));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW read output CH0_CCUVAL0_bf_CCUVAL0_CH0_o is wired from Top_CSC BF CH0_CCUVAL0_bf_CCUVAL0_CH0_out.
    property reg_if_hw_out_CH0_CCUVAL0_bf_CCUVAL0_CH0_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_CCUVAL0_CH0_out == tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL0_CH0_out));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW read output CH1_CTRLSTAT_bf_TimEn_CH1_o is wired from Top_CSC BF CH1_CTRLSTAT_bf_TimEn_CH1_out.
    property reg_if_hw_out_CH1_CTRLSTAT_bf_TimEn_CH1_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_TimEn_CH1_out == tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW read output CH1_CTRLSTAT_bf_ResIM_CH1_o is wired from Top_CSC BF CH1_CTRLSTAT_bf_ResIM_CH1_out.
    property reg_if_hw_out_CH1_CTRLSTAT_bf_ResIM_CH1_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_ResIM_CH1_out == tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW read output CH1_CTRLSTAT_bf_CntIM_CH1_o is wired from Top_CSC BF CH1_CTRLSTAT_bf_CntIM_CH1_out.
    property reg_if_hw_out_CH1_CTRLSTAT_bf_CntIM_CH1_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_CntIM_CH1_out == tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW read output CH1_CTRLSTAT_bf_OvfIntEn_CH1_o is wired from Top_CSC BF CH1_CTRLSTAT_bf_OvfIntEn_CH1_out.
    property reg_if_hw_out_CH1_CTRLSTAT_bf_OvfIntEn_CH1_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_OvfIntEn_CH1_out == tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_OvfIntEn_CH1_out));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW write input CH1_ACTVAL_bf_ACTVAL_CH1_i is wired to Top_CSC BF CH1_ACTVAL_bf_ACTVAL_CH1_in.
    property reg_if_hw_in_CH1_ACTVAL_bf_ACTVAL_CH1_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_ACTVAL_CH1_in == tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_in));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW write enable CH1_ACTVAL_bf_ACTVAL_CH1_en_i is wired to Top_CSC BF CH1_ACTVAL_bf_ACTVAL_CH1_peripheral_wr_en.
    property reg_if_hw_en_CH1_ACTVAL_bf_ACTVAL_CH1_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_ACTVAL_CH1_peripheral_wr_en == tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_peripheral_wr_en));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW read output CH1_ACTVAL_bf_ACTVAL_CH1_o is wired from Top_CSC BF CH1_ACTVAL_bf_ACTVAL_CH1_out.
    property reg_if_hw_out_CH1_ACTVAL_bf_ACTVAL_CH1_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_ACTVAL_CH1_out == tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_out));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW read output CH1_MAXVAL_bf_MAXVAL_CH1_o is wired from Top_CSC BF CH1_MAXVAL_bf_MAXVAL_CH1_out.
    property reg_if_hw_out_CH1_MAXVAL_bf_MAXVAL_CH1_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_MAXVAL_CH1_out == tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_MAXVAL_CH1_out));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW read output CH1_CCUCTRL0_bf_CCM0_CH1_o is wired from Top_CSC BF CH1_CCUCTRL0_bf_CCM0_CH1_out.
    property reg_if_hw_out_CH1_CCUCTRL0_bf_CCM0_CH1_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_CCM0_CH1_out == tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM0_CH1_out));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW read output CH1_CCUCTRL0_bf_CapIM0_CH1_o is wired from Top_CSC BF CH1_CCUCTRL0_bf_CapIM0_CH1_out.
    property reg_if_hw_out_CH1_CCUCTRL0_bf_CapIM0_CH1_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_CapIM0_CH1_out == tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM0_CH1_out));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW write input CH1_CCUVAL0_bf_CCUVAL0_CH1_i is wired to Top_CSC BF CH1_CCUVAL0_bf_CCUVAL0_CH1_in.
    property reg_if_hw_in_CH1_CCUVAL0_bf_CCUVAL0_CH1_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_CCUVAL0_CH1_in == tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL0_CH1_in));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW write enable CH1_CCUVAL0_bf_CCUVAL0_CH1_en_i is wired to Top_CSC BF CH1_CCUVAL0_bf_CCUVAL0_CH1_peripheral_wr_en.
    property reg_if_hw_en_CH1_CCUVAL0_bf_CCUVAL0_CH1_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_CCUVAL0_CH1_peripheral_wr_en == tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL0_CH1_peripheral_wr_en));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW read output CH1_CCUVAL0_bf_CCUVAL0_CH1_o is wired from Top_CSC BF CH1_CCUVAL0_bf_CCUVAL0_CH1_out.
    property reg_if_hw_out_CH1_CCUVAL0_bf_CCUVAL0_CH1_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_CCUVAL0_CH1_out == tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL0_CH1_out));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW read output CH1_CCUCTRL1_bf_CCM1_CH1_o is wired from Top_CSC BF CH1_CCUCTRL1_bf_CCM1_CH1_out.
    property reg_if_hw_out_CH1_CCUCTRL1_bf_CCM1_CH1_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_CCM1_CH1_out == tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM1_CH1_out));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW read output CH1_CCUCTRL1_bf_CapIM1_CH1_o is wired from Top_CSC BF CH1_CCUCTRL1_bf_CapIM1_CH1_out.
    property reg_if_hw_out_CH1_CCUCTRL1_bf_CapIM1_CH1_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_CapIM1_CH1_out == tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM1_CH1_out));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW write input CH1_CCUVAL1_bf_CCUVAL1_CH1_i is wired to Top_CSC BF CH1_CCUVAL1_bf_CCUVAL1_CH1_in.
    property reg_if_hw_in_CH1_CCUVAL1_bf_CCUVAL1_CH1_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_CCUVAL1_CH1_in == tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL1_CH1_in));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW write enable CH1_CCUVAL1_bf_CCUVAL1_CH1_en_i is wired to Top_CSC BF CH1_CCUVAL1_bf_CCUVAL1_CH1_peripheral_wr_en.
    property reg_if_hw_en_CH1_CCUVAL1_bf_CCUVAL1_CH1_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_CCUVAL1_CH1_peripheral_wr_en == tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL1_CH1_peripheral_wr_en));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW read output CH1_CCUVAL1_bf_CCUVAL1_CH1_o is wired from Top_CSC BF CH1_CCUVAL1_bf_CCUVAL1_CH1_out.
    property reg_if_hw_out_CH1_CCUVAL1_bf_CCUVAL1_CH1_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_CCUVAL1_CH1_out == tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL1_CH1_out));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW read output CH1_CCUCTRL2_bf_CCM2_CH1_o is wired from Top_CSC BF CH1_CCUCTRL2_bf_CCM2_CH1_out.
    property reg_if_hw_out_CH1_CCUCTRL2_bf_CCM2_CH1_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_CCM2_CH1_out == tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM2_CH1_out));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW read output CH1_CCUCTRL2_bf_CapIM2_CH1_o is wired from Top_CSC BF CH1_CCUCTRL2_bf_CapIM2_CH1_out.
    property reg_if_hw_out_CH1_CCUCTRL2_bf_CapIM2_CH1_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_CapIM2_CH1_out == tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM2_CH1_out));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW write input CH1_CCUVAL2_bf_CCUVAL2_CH1_i is wired to Top_CSC BF CH1_CCUVAL2_bf_CCUVAL2_CH1_in.
    property reg_if_hw_in_CH1_CCUVAL2_bf_CCUVAL2_CH1_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_CCUVAL2_CH1_in == tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL2_CH1_in));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW write enable CH1_CCUVAL2_bf_CCUVAL2_CH1_en_i is wired to Top_CSC BF CH1_CCUVAL2_bf_CCUVAL2_CH1_peripheral_wr_en.
    property reg_if_hw_en_CH1_CCUVAL2_bf_CCUVAL2_CH1_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_CCUVAL2_CH1_peripheral_wr_en == tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL2_CH1_peripheral_wr_en));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW read output CH1_CCUVAL2_bf_CCUVAL2_CH1_o is wired from Top_CSC BF CH1_CCUVAL2_bf_CCUVAL2_CH1_out.
    property reg_if_hw_out_CH1_CCUVAL2_bf_CCUVAL2_CH1_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_CCUVAL2_CH1_out == tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL2_CH1_out));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW read output CH1_CCUCTRL3_bf_CCM3_CH1_o is wired from Top_CSC BF CH1_CCUCTRL3_bf_CCM3_CH1_out.
    property reg_if_hw_out_CH1_CCUCTRL3_bf_CCM3_CH1_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_CCM3_CH1_out == tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM3_CH1_out));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW read output CH1_CCUCTRL3_bf_CapIM3_CH1_o is wired from Top_CSC BF CH1_CCUCTRL3_bf_CapIM3_CH1_out.
    property reg_if_hw_out_CH1_CCUCTRL3_bf_CapIM3_CH1_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_CapIM3_CH1_out == tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM3_CH1_out));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW write input CH1_CCUVAL3_bf_CCUVAL3_CH1_i is wired to Top_CSC BF CH1_CCUVAL3_bf_CCUVAL3_CH1_in.
    property reg_if_hw_in_CH1_CCUVAL3_bf_CCUVAL3_CH1_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_CCUVAL3_CH1_in == tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL3_CH1_in));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW write enable CH1_CCUVAL3_bf_CCUVAL3_CH1_en_i is wired to Top_CSC BF CH1_CCUVAL3_bf_CCUVAL3_CH1_peripheral_wr_en.
    property reg_if_hw_en_CH1_CCUVAL3_bf_CCUVAL3_CH1_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_CCUVAL3_CH1_peripheral_wr_en == tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL3_CH1_peripheral_wr_en));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW read output CH1_CCUVAL3_bf_CCUVAL3_CH1_o is wired from Top_CSC BF CH1_CCUVAL3_bf_CCUVAL3_CH1_out.
    property reg_if_hw_out_CH1_CCUVAL3_bf_CCUVAL3_CH1_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_CCUVAL3_CH1_out == tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL3_CH1_out));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW read output CH1_CCUCTRL4_bf_CCM4_CH1_o is wired from Top_CSC BF CH1_CCUCTRL4_bf_CCM4_CH1_out.
    property reg_if_hw_out_CH1_CCUCTRL4_bf_CCM4_CH1_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_CCM4_CH1_out == tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM4_CH1_out));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW read output CH1_CCUCTRL4_bf_CapIM4_CH1_o is wired from Top_CSC BF CH1_CCUCTRL4_bf_CapIM4_CH1_out.
    property reg_if_hw_out_CH1_CCUCTRL4_bf_CapIM4_CH1_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_CapIM4_CH1_out == tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM4_CH1_out));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW write input CH1_CCUVAL4_bf_CCUVAL4_CH1_i is wired to Top_CSC BF CH1_CCUVAL4_bf_CCUVAL4_CH1_in.
    property reg_if_hw_in_CH1_CCUVAL4_bf_CCUVAL4_CH1_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_CCUVAL4_CH1_in == tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL4_CH1_in));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW write enable CH1_CCUVAL4_bf_CCUVAL4_CH1_en_i is wired to Top_CSC BF CH1_CCUVAL4_bf_CCUVAL4_CH1_peripheral_wr_en.
    property reg_if_hw_en_CH1_CCUVAL4_bf_CCUVAL4_CH1_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_CCUVAL4_CH1_peripheral_wr_en == tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL4_CH1_peripheral_wr_en));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW read output CH1_CCUVAL4_bf_CCUVAL4_CH1_o is wired from Top_CSC BF CH1_CCUVAL4_bf_CCUVAL4_CH1_out.
    property reg_if_hw_out_CH1_CCUVAL4_bf_CCUVAL4_CH1_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_CCUVAL4_CH1_out == tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL4_CH1_out));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW read output CH1_CCUCTRL5_bf_CCM5_CH1_o is wired from Top_CSC BF CH1_CCUCTRL5_bf_CCM5_CH1_out.
    property reg_if_hw_out_CH1_CCUCTRL5_bf_CCM5_CH1_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_CCM5_CH1_out == tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM5_CH1_out));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW read output CH1_CCUCTRL5_bf_CapIM5_CH1_o is wired from Top_CSC BF CH1_CCUCTRL5_bf_CapIM5_CH1_out.
    property reg_if_hw_out_CH1_CCUCTRL5_bf_CapIM5_CH1_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_CapIM5_CH1_out == tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM5_CH1_out));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW write input CH1_CCUVAL5_bf_CCUVAL5_CH1_i is wired to Top_CSC BF CH1_CCUVAL5_bf_CCUVAL5_CH1_in.
    property reg_if_hw_in_CH1_CCUVAL5_bf_CCUVAL5_CH1_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_CCUVAL5_CH1_in == tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL5_CH1_in));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW write enable CH1_CCUVAL5_bf_CCUVAL5_CH1_en_i is wired to Top_CSC BF CH1_CCUVAL5_bf_CCUVAL5_CH1_peripheral_wr_en.
    property reg_if_hw_en_CH1_CCUVAL5_bf_CCUVAL5_CH1_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_CCUVAL5_CH1_peripheral_wr_en == tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL5_CH1_peripheral_wr_en));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW read output CH1_CCUVAL5_bf_CCUVAL5_CH1_o is wired from Top_CSC BF CH1_CCUVAL5_bf_CCUVAL5_CH1_out.
    property reg_if_hw_out_CH1_CCUVAL5_bf_CCUVAL5_CH1_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_CCUVAL5_CH1_out == tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL5_CH1_out));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface AHB haddr connectivity to Top AHB haddr.
    property regif_top_ahb_haddr_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF. SX_AHB_HADDR == tc_soc_timer. SX_AHB_HADDR));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface AHB hwdata connectivity to Top AHB hwdata.
    property regif_top_ahb_hwdata_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.SX_AHB_HWDATA == tc_soc_timer.SX_AHB_HWDATA));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface AHB hburst connectivity to Top AHB hburst.
    property regif_top_ahb_hburst_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.SX_AHB_HBURST == tc_soc_timer.SX_AHB_HBURST));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface AHB hmastlock connectivity to Top AHB hmastlock.
    property regif_top_ahb_hmastlock_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.SX_AHB_HMASTLOCK == tc_soc_timer.SX_AHB_HMASTLOCK));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface AHB hprot connectivity to Top AHB hprot.
    property regif_top_ahb_hprot_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.SX_AHB_HPROT == tc_soc_timer.SX_AHB_HPROT));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface AHB hsize connectivity to Top AHB hsize.
    property regif_top_ahb_hsize_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.SX_AHB_HSIZE == tc_soc_timer.SX_AHB_HSIZE));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface AHB htrans connectivity to Top AHB htrans.
    property regif_top_ahb_htrans_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.SX_AHB_HTRANS == tc_soc_timer.SX_AHB_HTRANS));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface AHB hwrite connectivity to Top AHB hwrite.
    property regif_top_ahb_hwrite_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.SX_AHB_HWRITE == tc_soc_timer.SX_AHB_HWRITE));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface AHB hsel connectivity to Top AHB hsel.
    property regif_top_ahb_hsel_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.SX_AHB_HSEL == tc_soc_timer.SX_AHB_HSEL));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface AHB hready connectivity to Top AHB hready.
    property regif_top_ahb_hready_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.SX_AHB_HREADY == tc_soc_timer.SX_AHB_HREADY));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface AHB hrdata connectivity to Top AHB hrdata.
    property regif_top_ahb_hrdata_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.SX_AHB_HRDATA == tc_soc_timer.SX_AHB_HRDATA));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface AHB hreadyout connectivity to Top AHB hreadyout.
    property regif_top_ahb_hreadyout_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.SX_AHB_HREADYOUT == tc_soc_timer.SX_AHB_HREADYOUT));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface AHB hresp connectivity to Top AHB hresp.
    property regif_top_ahb_hresp_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.SX_AHB_HRESP == tc_soc_timer.SX_AHB_HRESP));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW read output CH0_CTRLSTAT_bf_TimEn_CH0_o is wired from Top BF CH0_CTRLSTAT_bf_TimEn_CH0_out.
    property regif_peripheral_hw_out_CH0_CTRLSTAT_bf_TimEn_CH0_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_TimEn_CH0_out == tc_soc_timer.comp_timer.bf_TimEn_CH0_out));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW read output CH0_CTRLSTAT_bf_ResIM_CH0_o is wired from Top BF CH0_CTRLSTAT_bf_ResIM_CH0_out.
    property regif_peripheral_hw_out_CH0_CTRLSTAT_bf_ResIM_CH0_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_ResIM_CH0_out == tc_soc_timer.comp_timer.bf_ResIM_CH0_out));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW read output CH0_CTRLSTAT_bf_CntIM_CH0_o is wired from Top BF CH0_CTRLSTAT_bf_CntIM_CH0_out.
    property regif_peripheral_hw_out_CH0_CTRLSTAT_bf_CntIM_CH0_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_CntIM_CH0_out == tc_soc_timer.comp_timer.bf_CntIM_CH0_out));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW read output CH0_CTRLSTAT_bf_OvfIntEn_CH0_o is wired from Top BF CH0_CTRLSTAT_bf_OvfIntEn_CH0_out.
    property regif_peripheral_hw_out_CH0_CTRLSTAT_bf_OvfIntEn_CH0_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_OvfIntEn_CH0_out == tc_soc_timer.comp_timer.bf_OvfIntEn_CH0_out));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW write input CH0_ACTVAL_bf_ACTVAL_CH0_i is wired to Top BF CH0_ACTVAL_bf_ACTVAL_CH0_in.
    property regif_peripheral_hw_in_CH0_ACTVAL_bf_ACTVAL_CH0_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_ACTVAL_CH0_in == tc_soc_timer.comp_timer.bf_ACTVAL_CH0_in));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW write enable CH0_ACTVAL_bf_ACTVAL_CH0_en_i is wired to Top BF CH0_ACTVAL_bf_ACTVAL_CH0_peripheral_wr_en.
    property regif_peripheral_hw_en_CH0_ACTVAL_bf_ACTVAL_CH0_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_ACTVAL_CH0_peripheral_wr_en == tc_soc_timer.comp_timer.bf_ACTVAL_CH0_peripheral_wr_en));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW read output CH0_ACTVAL_bf_ACTVAL_CH0_o is wired from Top BF CH0_ACTVAL_bf_ACTVAL_CH0_out.
    property regif_peripheral_hw_out_CH0_ACTVAL_bf_ACTVAL_CH0_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_ACTVAL_CH0_out == tc_soc_timer.comp_timer.bf_ACTVAL_CH0_out));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW read output CH0_MAXVAL_bf_MAXVAL_CH0_o is wired from Top BF CH0_MAXVAL_bf_MAXVAL_CH0_out.
    property regif_peripheral_hw_out_CH0_MAXVAL_bf_MAXVAL_CH0_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_MAXVAL_CH0_out == tc_soc_timer.comp_timer.bf_MAXVAL_CH0_out));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW read output CH0_CCUCTRL0_bf_CCM0_CH0_o is wired from Top BF CH0_CCUCTRL0_bf_CCM0_CH0_out.
    property regif_peripheral_hw_out_CH0_CCUCTRL0_bf_CCM0_CH0_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_CCM0_CH0_out == tc_soc_timer.comp_timer.bf_CCM0_CH0_out));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW read output CH0_CCUCTRL0_bf_CapIM0_CH0_o is wired from Top BF CH0_CCUCTRL0_bf_CapIM0_CH0_out.
    property regif_peripheral_hw_out_CH0_CCUCTRL0_bf_CapIM0_CH0_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_CapIM0_CH0_out == tc_soc_timer.comp_timer.bf_CapIM0_CH0_out));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW write input CH0_CCUVAL0_bf_CCUVAL0_CH0_i is wired to Top BF CH0_CCUVAL0_bf_CCUVAL0_CH0_in.
    property regif_peripheral_hw_in_CH0_CCUVAL0_bf_CCUVAL0_CH0_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_CCUVAL0_CH0_in == tc_soc_timer.comp_timer.bf_CCUVAL0_CH0_in));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW write enable CH0_CCUVAL0_bf_CCUVAL0_CH0_en_i is wired to Top BF CH0_CCUVAL0_bf_CCUVAL0_CH0_peripheral_wr_en.
    property regif_peripheral_hw_en_CH0_CCUVAL0_bf_CCUVAL0_CH0_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_CCUVAL0_CH0_peripheral_wr_en == tc_soc_timer.comp_timer.bf_CCUVAL0_CH0_peripheral_wr_en));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW read output CH0_CCUVAL0_bf_CCUVAL0_CH0_o is wired from Top BF CH0_CCUVAL0_bf_CCUVAL0_CH0_out.
    property regif_peripheral_hw_out_CH0_CCUVAL0_bf_CCUVAL0_CH0_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_CCUVAL0_CH0_out == tc_soc_timer.comp_timer.bf_CCUVAL0_CH0_out));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW read output CH1_CTRLSTAT_bf_TimEn_CH1_o is wired from Top BF CH1_CTRLSTAT_bf_TimEn_CH1_out.
    property regif_peripheral_hw_out_CH1_CTRLSTAT_bf_TimEn_CH1_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_TimEn_CH1_out == tc_soc_timer.comp_timer.bf_TimEn_CH1_out));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW read output CH1_CTRLSTAT_bf_ResIM_CH1_o is wired from Top BF CH1_CTRLSTAT_bf_ResIM_CH1_out.
    property regif_peripheral_hw_out_CH1_CTRLSTAT_bf_ResIM_CH1_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_ResIM_CH1_out == tc_soc_timer.comp_timer.bf_ResIM_CH1_out));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW read output CH1_CTRLSTAT_bf_CntIM_CH1_o is wired from Top BF CH1_CTRLSTAT_bf_CntIM_CH1_out.
    property regif_peripheral_hw_out_CH1_CTRLSTAT_bf_CntIM_CH1_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_CntIM_CH1_out == tc_soc_timer.comp_timer.bf_CntIM_CH1_out));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW read output CH1_CTRLSTAT_bf_OvfIntEn_CH1_o is wired from Top BF CH1_CTRLSTAT_bf_OvfIntEn_CH1_out.
    property regif_peripheral_hw_out_CH1_CTRLSTAT_bf_OvfIntEn_CH1_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_OvfIntEn_CH1_out == tc_soc_timer.comp_timer.bf_OvfIntEn_CH1_out));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW write input CH1_ACTVAL_bf_ACTVAL_CH1_i is wired to Top BF CH1_ACTVAL_bf_ACTVAL_CH1_in.
    property regif_peripheral_hw_in_CH1_ACTVAL_bf_ACTVAL_CH1_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_ACTVAL_CH1_in == tc_soc_timer.comp_timer.bf_ACTVAL_CH1_in));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW write enable CH1_ACTVAL_bf_ACTVAL_CH1_en_i is wired to Top BF CH1_ACTVAL_bf_ACTVAL_CH1_peripheral_wr_en.
    property regif_peripheral_hw_en_CH1_ACTVAL_bf_ACTVAL_CH1_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_ACTVAL_CH1_peripheral_wr_en == tc_soc_timer.comp_timer.bf_ACTVAL_CH1_peripheral_wr_en));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW read output CH1_ACTVAL_bf_ACTVAL_CH1_o is wired from Top BF CH1_ACTVAL_bf_ACTVAL_CH1_out.
    property regif_peripheral_hw_out_CH1_ACTVAL_bf_ACTVAL_CH1_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_ACTVAL_CH1_out == tc_soc_timer.comp_timer.bf_ACTVAL_CH1_out));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW read output CH1_MAXVAL_bf_MAXVAL_CH1_o is wired from Top BF CH1_MAXVAL_bf_MAXVAL_CH1_out.
    property regif_peripheral_hw_out_CH1_MAXVAL_bf_MAXVAL_CH1_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_MAXVAL_CH1_out == tc_soc_timer.comp_timer.bf_MAXVAL_CH1_out));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW read output CH1_CCUCTRL0_bf_CCM0_CH1_o is wired from Top BF CH1_CCUCTRL0_bf_CCM0_CH1_out.
    property regif_peripheral_hw_out_CH1_CCUCTRL0_bf_CCM0_CH1_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_CCM0_CH1_out == tc_soc_timer.comp_timer.bf_CCM0_CH1_out));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW read output CH1_CCUCTRL0_bf_CapIM0_CH1_o is wired from Top BF CH1_CCUCTRL0_bf_CapIM0_CH1_out.
    property regif_peripheral_hw_out_CH1_CCUCTRL0_bf_CapIM0_CH1_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_CapIM0_CH1_out == tc_soc_timer.comp_timer.bf_CapIM0_CH1_out));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW write input CH1_CCUVAL0_bf_CCUVAL0_CH1_i is wired to Top BF CH1_CCUVAL0_bf_CCUVAL0_CH1_in.
    property regif_peripheral_hw_in_CH1_CCUVAL0_bf_CCUVAL0_CH1_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_CCUVAL0_CH1_in == tc_soc_timer.comp_timer.bf_CCUVAL0_CH1_in));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW write enable CH1_CCUVAL0_bf_CCUVAL0_CH1_en_i is wired to Top BF CH1_CCUVAL0_bf_CCUVAL0_CH1_peripheral_wr_en.
    property regif_peripheral_hw_en_CH1_CCUVAL0_bf_CCUVAL0_CH1_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_CCUVAL0_CH1_peripheral_wr_en == tc_soc_timer.comp_timer.bf_CCUVAL0_CH1_peripheral_wr_en));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW read output CH1_CCUVAL0_bf_CCUVAL0_CH1_o is wired from Top BF CH1_CCUVAL0_bf_CCUVAL0_CH1_out.
    property regif_peripheral_hw_out_CH1_CCUVAL0_bf_CCUVAL0_CH1_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_CCUVAL0_CH1_out == tc_soc_timer.comp_timer.bf_CCUVAL0_CH1_out));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW read output CH1_CCUCTRL1_bf_CCM1_CH1_o is wired from Top BF CH1_CCUCTRL1_bf_CCM1_CH1_out.
    property regif_peripheral_hw_out_CH1_CCUCTRL1_bf_CCM1_CH1_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_CCM1_CH1_out == tc_soc_timer.comp_timer.bf_CCM1_CH1_out));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW read output CH1_CCUCTRL1_bf_CapIM1_CH1_o is wired from Top BF CH1_CCUCTRL1_bf_CapIM1_CH1_out.
    property regif_peripheral_hw_out_CH1_CCUCTRL1_bf_CapIM1_CH1_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_CapIM1_CH1_out == tc_soc_timer.comp_timer.bf_CapIM1_CH1_out));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW write input CH1_CCUVAL1_bf_CCUVAL1_CH1_i is wired to Top BF CH1_CCUVAL1_bf_CCUVAL1_CH1_in.
    property regif_peripheral_hw_in_CH1_CCUVAL1_bf_CCUVAL1_CH1_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_CCUVAL1_CH1_in == tc_soc_timer.comp_timer.bf_CCUVAL1_CH1_in));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW write enable CH1_CCUVAL1_bf_CCUVAL1_CH1_en_i is wired to Top BF CH1_CCUVAL1_bf_CCUVAL1_CH1_peripheral_wr_en.
    property regif_peripheral_hw_en_CH1_CCUVAL1_bf_CCUVAL1_CH1_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_CCUVAL1_CH1_peripheral_wr_en == tc_soc_timer.comp_timer.bf_CCUVAL1_CH1_peripheral_wr_en));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW read output CH1_CCUVAL1_bf_CCUVAL1_CH1_o is wired from Top BF CH1_CCUVAL1_bf_CCUVAL1_CH1_out.
    property regif_peripheral_hw_out_CH1_CCUVAL1_bf_CCUVAL1_CH1_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_CCUVAL1_CH1_out == tc_soc_timer.comp_timer.bf_CCUVAL1_CH1_out));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW read output CH1_CCUCTRL2_bf_CCM2_CH1_o is wired from Top BF CH1_CCUCTRL2_bf_CCM2_CH1_out.
    property regif_peripheral_hw_out_CH1_CCUCTRL2_bf_CCM2_CH1_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_CCM2_CH1_out == tc_soc_timer.comp_timer.bf_CCM2_CH1_out));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW read output CH1_CCUCTRL2_bf_CapIM2_CH1_o is wired from Top BF CH1_CCUCTRL2_bf_CapIM2_CH1_out.
    property regif_peripheral_hw_out_CH1_CCUCTRL2_bf_CapIM2_CH1_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_CapIM2_CH1_out == tc_soc_timer.comp_timer.bf_CapIM2_CH1_out));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW write input CH1_CCUVAL2_bf_CCUVAL2_CH1_i is wired to Top BF CH1_CCUVAL2_bf_CCUVAL2_CH1_in.
    property regif_peripheral_hw_in_CH1_CCUVAL2_bf_CCUVAL2_CH1_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_CCUVAL2_CH1_in == tc_soc_timer.comp_timer.bf_CCUVAL2_CH1_in));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW write enable CH1_CCUVAL2_bf_CCUVAL2_CH1_en_i is wired to Top BF CH1_CCUVAL2_bf_CCUVAL2_CH1_peripheral_wr_en.
    property regif_peripheral_hw_en_CH1_CCUVAL2_bf_CCUVAL2_CH1_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_CCUVAL2_CH1_peripheral_wr_en == tc_soc_timer.comp_timer.bf_CCUVAL2_CH1_peripheral_wr_en));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW read output CH1_CCUVAL2_bf_CCUVAL2_CH1_o is wired from Top BF CH1_CCUVAL2_bf_CCUVAL2_CH1_out.
    property regif_peripheral_hw_out_CH1_CCUVAL2_bf_CCUVAL2_CH1_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_CCUVAL2_CH1_out == tc_soc_timer.comp_timer.bf_CCUVAL2_CH1_out));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW read output CH1_CCUCTRL3_bf_CCM3_CH1_o is wired from Top BF CH1_CCUCTRL3_bf_CCM3_CH1_out.
    property regif_peripheral_hw_out_CH1_CCUCTRL3_bf_CCM3_CH1_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_CCM3_CH1_out == tc_soc_timer.comp_timer.bf_CCM3_CH1_out));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW read output CH1_CCUCTRL3_bf_CapIM3_CH1_o is wired from Top BF CH1_CCUCTRL3_bf_CapIM3_CH1_out.
    property regif_peripheral_hw_out_CH1_CCUCTRL3_bf_CapIM3_CH1_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_CapIM3_CH1_out == tc_soc_timer.comp_timer.bf_CapIM3_CH1_out));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW write input CH1_CCUVAL3_bf_CCUVAL3_CH1_i is wired to Top BF CH1_CCUVAL3_bf_CCUVAL3_CH1_in.
    property regif_peripheral_hw_in_CH1_CCUVAL3_bf_CCUVAL3_CH1_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_CCUVAL3_CH1_in == tc_soc_timer.comp_timer.bf_CCUVAL3_CH1_in));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW write enable CH1_CCUVAL3_bf_CCUVAL3_CH1_en_i is wired to Top BF CH1_CCUVAL3_bf_CCUVAL3_CH1_peripheral_wr_en.
    property regif_peripheral_hw_en_CH1_CCUVAL3_bf_CCUVAL3_CH1_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_CCUVAL3_CH1_peripheral_wr_en == tc_soc_timer.comp_timer.bf_CCUVAL3_CH1_peripheral_wr_en));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW read output CH1_CCUVAL3_bf_CCUVAL3_CH1_o is wired from Top BF CH1_CCUVAL3_bf_CCUVAL3_CH1_out.
    property regif_peripheral_hw_out_CH1_CCUVAL3_bf_CCUVAL3_CH1_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_CCUVAL3_CH1_out == tc_soc_timer.comp_timer.bf_CCUVAL3_CH1_out));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW read output CH1_CCUCTRL4_bf_CCM4_CH1_o is wired from Top BF CH1_CCUCTRL4_bf_CCM4_CH1_out.
    property regif_peripheral_hw_out_CH1_CCUCTRL4_bf_CCM4_CH1_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_CCM4_CH1_out == tc_soc_timer.comp_timer.bf_CCM4_CH1_out));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW read output CH1_CCUCTRL4_bf_CapIM4_CH1_o is wired from Top BF CH1_CCUCTRL4_bf_CapIM4_CH1_out.
    property regif_peripheral_hw_out_CH1_CCUCTRL4_bf_CapIM4_CH1_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_CapIM4_CH1_out == tc_soc_timer.comp_timer.bf_CapIM4_CH1_out));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW write input CH1_CCUVAL4_bf_CCUVAL4_CH1_i is wired to Top BF CH1_CCUVAL4_bf_CCUVAL4_CH1_in.
    property regif_peripheral_hw_in_CH1_CCUVAL4_bf_CCUVAL4_CH1_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_CCUVAL4_CH1_in == tc_soc_timer.comp_timer.bf_CCUVAL4_CH1_in));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW write enable CH1_CCUVAL4_bf_CCUVAL4_CH1_en_i is wired to Top BF CH1_CCUVAL4_bf_CCUVAL4_CH1_peripheral_wr_en.
    property regif_peripheral_hw_en_CH1_CCUVAL4_bf_CCUVAL4_CH1_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_CCUVAL4_CH1_peripheral_wr_en == tc_soc_timer.comp_timer.bf_CCUVAL4_CH1_peripheral_wr_en));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW read output CH1_CCUVAL4_bf_CCUVAL4_CH1_o is wired from Top BF CH1_CCUVAL4_bf_CCUVAL4_CH1_out.
    property regif_peripheral_hw_out_CH1_CCUVAL4_bf_CCUVAL4_CH1_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_CCUVAL4_CH1_out == tc_soc_timer.comp_timer.bf_CCUVAL4_CH1_out));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW read output CH1_CCUCTRL5_bf_CCM5_CH1_o is wired from Top BF CH1_CCUCTRL5_bf_CCM5_CH1_out.
    property regif_peripheral_hw_out_CH1_CCUCTRL5_bf_CCM5_CH1_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_CCM5_CH1_out == tc_soc_timer.comp_timer.bf_CCM5_CH1_out));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW read output CH1_CCUCTRL5_bf_CapIM5_CH1_o is wired from Top BF CH1_CCUCTRL5_bf_CapIM5_CH1_out.
    property regif_peripheral_hw_out_CH1_CCUCTRL5_bf_CapIM5_CH1_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_CapIM5_CH1_out == tc_soc_timer.comp_timer.bf_CapIM5_CH1_out));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW write input CH1_CCUVAL5_bf_CCUVAL5_CH1_i is wired to Top BF CH1_CCUVAL5_bf_CCUVAL5_CH1_in.
    property regif_peripheral_hw_in_CH1_CCUVAL5_bf_CCUVAL5_CH1_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_CCUVAL5_CH1_in == tc_soc_timer.comp_timer.bf_CCUVAL5_CH1_in));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW write enable CH1_CCUVAL5_bf_CCUVAL5_CH1_en_i is wired to Top BF CH1_CCUVAL5_bf_CCUVAL5_CH1_peripheral_wr_en.
    property regif_peripheral_hw_en_CH1_CCUVAL5_bf_CCUVAL5_CH1_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_CCUVAL5_CH1_peripheral_wr_en == tc_soc_timer.comp_timer.bf_CCUVAL5_CH1_peripheral_wr_en));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check Register Interface HW read output CH1_CCUVAL5_bf_CCUVAL5_CH1_o is wired from Top BF CH1_CCUVAL5_bf_CCUVAL5_CH1_out.
    property regif_peripheral_hw_out_CH1_CCUVAL5_bf_CCUVAL5_CH1_connectivity;
    @(posedge tc_soc_timer.HCLK_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.TimerCSC_BF_bf_CCUVAL5_CH1_out == tc_soc_timer.comp_timer.bf_CCUVAL5_CH1_out));
    endproperty
//---------------------------------------------------------------------------------------------

    //The slave must put ready high after the address phase has started.
    property ready_after_address_phase;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HSEL_i == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HREADY_i == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HTRANS_i == 2'b10) )  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.rai_per_err_i == 0)  ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HREADYOUT_o == 1));
    endproperty
//---------------------------------------------------------------------------------------------

    //The slave must put ready high when no transaction is ongoing.
    property ready_when_no_transaction;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (((tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HSEL_i == 0) || (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HREADY_i == 0) || (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HTRANS_i == 2'b00)) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HREADYOUT_o == 1) );
    endproperty
//---------------------------------------------------------------------------------------------

    //HRESP must be low when no error occurs during the transaction.
    property hresp_no_error_check;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HSEL_i == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HREADY_i == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HTRANS_i == 2'b10) )  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.rai_per_err_i == 0)  ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HRESP_o == 0));
    endproperty
//---------------------------------------------------------------------------------------------

    //HRESP must be low when no transaction is ongoing.
    property hresp_when_no_transaction;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ((tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HSEL_i == 0) || (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HREADY_i == 0) || (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HTRANS_i == 2'b00)) && 
	 (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HRESP_o == 0) ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HRESP_o == 0) );
    endproperty
//---------------------------------------------------------------------------------------------

    //Check if acc_en can be high.
    property acc_en_check;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HSEL_i == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HREADY_i == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HTRANS_i == 2'b10) )  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.rai_per_err_i == 0)  ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.rai_per_acc_en_o == 1));
    endproperty
//---------------------------------------------------------------------------------------------

    //acc_en is low when no transaction.
    property no_acc_en_when_no_transaction;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (((tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HSEL_i == 0) || (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HREADY_i == 0) || (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HTRANS_i == 2'b00)) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.rai_per_acc_en_o == 0) );
    endproperty
//---------------------------------------------------------------------------------------------

    //Check if haddr_i can be transformed into rai_per_addr_o.
    property addr_check;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HSEL_i == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HREADY_i == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HTRANS_i == 2'b10) )  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.rai_per_err_i == 0)  ) 
	|->
	 ( $past(tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HADDR_i) == tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.bridge_fsm_haddr_reg_Outp_out_out));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check if hrdata_o equals to rai_per_rdata_i.
    property rdata_check;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HSEL_i == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HREADY_i == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HTRANS_i == 2'b10) )  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.rai_per_err_i == 0)  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HRDATA_o == tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.rai_per_rdata_i) );
    endproperty
//---------------------------------------------------------------------------------------------

    //Check if hwdata_i equals to rai_per_wdata_o.
    property wdata_check;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HSEL_i == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HREADY_i == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HTRANS_i == 2'b10) )  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.rai_per_err_i == 0)  ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HWDATA_i == tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.rai_per_wdata_o));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check if rai_per_wr_en_o is low for read transactions.
    property read_enable_check;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( ( (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HSEL_i == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HREADY_i == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HTRANS_i == 2'b10) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HWRITE_i == 0) )  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.rai_per_err_i == 0)  ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.rai_per_wr_en_o == 0));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check if rai_per_wr_en_o is set to high for write transactions.
    property write_enable_check;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( ( (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HSEL_i == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HREADY_i == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HTRANS_i == 2'b10) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HWRITE_i == 1) )  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.rai_per_err_i == 0)  ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.rai_per_wr_en_o == 1));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check if bridge can translate byte access correctly.
    property access_size_byte_check;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( ( (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HSEL_i == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HREADY_i == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HTRANS_i == 2'b10) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HSIZE_i == 3'b000) )  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.rai_per_err_i == 0)  ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.csc_access_size_o == 2'b10));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check if bridge can translate halfword access correctly.
    property access_size_halfword_check;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( ( (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HSEL_i == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HREADY_i == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HTRANS_i == 2'b10) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HSIZE_i == 3'b001) )  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.rai_per_err_i == 0)  ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.csc_access_size_o == 2'b01));
    endproperty
//---------------------------------------------------------------------------------------------

    //Check if bridge can translate word access correctly.
    property access_size_word_check;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( ( (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HSEL_i == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HREADY_i == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HTRANS_i == 2'b10) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HSIZE_i == 3'b010) )  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.rai_per_err_i == 0)  ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.csc_access_size_o == 2'b00));
    endproperty
//---------------------------------------------------------------------------------------------

    //hresp high and hready low during error in data phase.
    property bus_error_data_phase_hreadyout_hresp_check;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HSEL_i == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HREADY_i == 1) && 
	 ( ~(tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HTRANS_i == 2'b00)) )  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.rai_per_err_i == 1)  ) 
	|->
	 ( (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HREADYOUT_o == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HRESP_o == 1) ));
    endproperty
//---------------------------------------------------------------------------------------------

    //No access enable should be asserted when error occurs in address phase
    property no_acc_en_when_error_in_address_phase;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HSEL_i == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HREADY_i == 1) && 
	 ((tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HTRANS_i == 2'b01) || (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HTRANS_i == 2'b11)) ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.rai_per_acc_en_o == 0) );
    endproperty
//---------------------------------------------------------------------------------------------

    //Check if burst error response can be high.
    property burst_error_response;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HSEL_i == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HREADY_i == 1) && 
	 ((tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HTRANS_i == 2'b01) || (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HTRANS_i == 2'b11)) ) 
	|->
	  ##1
	 ( (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HREADYOUT_o == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HRESP_o == 1) ) );
    endproperty
//---------------------------------------------------------------------------------------------

    //Bus error exists two cycles
    property bus_error_two_cycles;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HREADYOUT_o == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HRESP_o == 1) ) 
	|->
	  ##1
	 ( (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HREADYOUT_o == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_AHB_RAI_Bridge.HRESP_o == 1) ) );
    endproperty
//---------------------------------------------------------------------------------------------

    no_locked_transfer_assume: assume property(no_locked_transfer);
    transfer_start_non_seq_assume: assume property(transfer_start_non_seq);
    burst_after_non_seq_assume: assume property(burst_after_non_seq);
    hsel_high_during_burst_assume: assume property(hsel_high_during_burst);
    idle_after_reset_assume: assume property(idle_after_reset);
    no_csc_error_when_no_access_en_assume: assume property(no_csc_error_when_no_access_en);
    hreadyin_hreadyout_data_phase_assume: assume property(hreadyin_hreadyout_data_phase);
    ready_after_reset_assert: assert property(ready_after_reset);
    hresp_after_reset_assert: assert property(hresp_after_reset);
    acc_en_after_reset_assert: assert property(acc_en_after_reset);
    bridge_csc_data_in_connectivity_assert: assert property(bridge_csc_data_in_connectivity);
    bridge_csc_addr_connectivity_assert: assert property(bridge_csc_addr_connectivity);
    bridge_csc_access_size_connectivity_assert: assert property(bridge_csc_access_size_connectivity);
    bridge_csc_wr_en_connectivity_assert: assert property(bridge_csc_wr_en_connectivity);
    bridge_csc_rd_en_connectivity_assert: assert property(bridge_csc_rd_en_connectivity);
    bridge_csc_rdata_connectivity_assert: assert property(bridge_csc_rdata_connectivity);
    bridge_rai_ack_i_connectivity_assert: assert property(bridge_rai_ack_i_connectivity);
    bridge_rai_err_i_connectivity_assert: assert property(bridge_rai_err_i_connectivity);
    bridge_csc_reset_connectivity_assert: assert property(bridge_csc_reset_connectivity);
    bridge_regif_haddr_connectivity_assert: assert property(bridge_regif_haddr_connectivity);
    bridge_regif_hwdata_connectivity_assert: assert property(bridge_regif_hwdata_connectivity);
    bridge_regif_hburst_connectivity_assert: assert property(bridge_regif_hburst_connectivity);
    bridge_regif_hmastlock_connectivity_assert: assert property(bridge_regif_hmastlock_connectivity);
    bridge_regif_hprot_connectivity_assert: assert property(bridge_regif_hprot_connectivity);
    bridge_regif_hsize_connectivity_assert: assert property(bridge_regif_hsize_connectivity);
    bridge_regif_htrans_connectivity_assert: assert property(bridge_regif_htrans_connectivity);
    bridge_regif_hwrite_connectivity_assert: assert property(bridge_regif_hwrite_connectivity);
    bridge_regif_hsel_connectivity_assert: assert property(bridge_regif_hsel_connectivity);
    bridge_regif_hready_connectivity_assert: assert property(bridge_regif_hready_connectivity);
    bridge_regif_hrdata_connectivity_assert: assert property(bridge_regif_hrdata_connectivity);
    bridge_regif_hreadyout_connectivity_assert: assert property(bridge_regif_hreadyout_connectivity);
    bridge_regif_hresp_connectivity_assert: assert property(bridge_regif_hresp_connectivity);
    reg_if_hw_out_CH0_CTRLSTAT_bf_TimEn_CH0_connectivity_assert: assert property(reg_if_hw_out_CH0_CTRLSTAT_bf_TimEn_CH0_connectivity);
    reg_if_hw_out_CH0_CTRLSTAT_bf_ResIM_CH0_connectivity_assert: assert property(reg_if_hw_out_CH0_CTRLSTAT_bf_ResIM_CH0_connectivity);
    reg_if_hw_out_CH0_CTRLSTAT_bf_CntIM_CH0_connectivity_assert: assert property(reg_if_hw_out_CH0_CTRLSTAT_bf_CntIM_CH0_connectivity);
    reg_if_hw_out_CH0_CTRLSTAT_bf_OvfIntEn_CH0_connectivity_assert: assert property(reg_if_hw_out_CH0_CTRLSTAT_bf_OvfIntEn_CH0_connectivity);
    reg_if_hw_in_CH0_ACTVAL_bf_ACTVAL_CH0_connectivity_assert: assert property(reg_if_hw_in_CH0_ACTVAL_bf_ACTVAL_CH0_connectivity);
    reg_if_hw_en_CH0_ACTVAL_bf_ACTVAL_CH0_connectivity_assert: assert property(reg_if_hw_en_CH0_ACTVAL_bf_ACTVAL_CH0_connectivity);
    reg_if_hw_out_CH0_ACTVAL_bf_ACTVAL_CH0_connectivity_assert: assert property(reg_if_hw_out_CH0_ACTVAL_bf_ACTVAL_CH0_connectivity);
    reg_if_hw_out_CH0_MAXVAL_bf_MAXVAL_CH0_connectivity_assert: assert property(reg_if_hw_out_CH0_MAXVAL_bf_MAXVAL_CH0_connectivity);
    reg_if_hw_out_CH0_CCUCTRL0_bf_CCM0_CH0_connectivity_assert: assert property(reg_if_hw_out_CH0_CCUCTRL0_bf_CCM0_CH0_connectivity);
    reg_if_hw_out_CH0_CCUCTRL0_bf_CapIM0_CH0_connectivity_assert: assert property(reg_if_hw_out_CH0_CCUCTRL0_bf_CapIM0_CH0_connectivity);
    reg_if_hw_in_CH0_CCUVAL0_bf_CCUVAL0_CH0_connectivity_assert: assert property(reg_if_hw_in_CH0_CCUVAL0_bf_CCUVAL0_CH0_connectivity);
    reg_if_hw_en_CH0_CCUVAL0_bf_CCUVAL0_CH0_connectivity_assert: assert property(reg_if_hw_en_CH0_CCUVAL0_bf_CCUVAL0_CH0_connectivity);
    reg_if_hw_out_CH0_CCUVAL0_bf_CCUVAL0_CH0_connectivity_assert: assert property(reg_if_hw_out_CH0_CCUVAL0_bf_CCUVAL0_CH0_connectivity);
    reg_if_hw_out_CH1_CTRLSTAT_bf_TimEn_CH1_connectivity_assert: assert property(reg_if_hw_out_CH1_CTRLSTAT_bf_TimEn_CH1_connectivity);
    reg_if_hw_out_CH1_CTRLSTAT_bf_ResIM_CH1_connectivity_assert: assert property(reg_if_hw_out_CH1_CTRLSTAT_bf_ResIM_CH1_connectivity);
    reg_if_hw_out_CH1_CTRLSTAT_bf_CntIM_CH1_connectivity_assert: assert property(reg_if_hw_out_CH1_CTRLSTAT_bf_CntIM_CH1_connectivity);
    reg_if_hw_out_CH1_CTRLSTAT_bf_OvfIntEn_CH1_connectivity_assert: assert property(reg_if_hw_out_CH1_CTRLSTAT_bf_OvfIntEn_CH1_connectivity);
    reg_if_hw_in_CH1_ACTVAL_bf_ACTVAL_CH1_connectivity_assert: assert property(reg_if_hw_in_CH1_ACTVAL_bf_ACTVAL_CH1_connectivity);
    reg_if_hw_en_CH1_ACTVAL_bf_ACTVAL_CH1_connectivity_assert: assert property(reg_if_hw_en_CH1_ACTVAL_bf_ACTVAL_CH1_connectivity);
    reg_if_hw_out_CH1_ACTVAL_bf_ACTVAL_CH1_connectivity_assert: assert property(reg_if_hw_out_CH1_ACTVAL_bf_ACTVAL_CH1_connectivity);
    reg_if_hw_out_CH1_MAXVAL_bf_MAXVAL_CH1_connectivity_assert: assert property(reg_if_hw_out_CH1_MAXVAL_bf_MAXVAL_CH1_connectivity);
    reg_if_hw_out_CH1_CCUCTRL0_bf_CCM0_CH1_connectivity_assert: assert property(reg_if_hw_out_CH1_CCUCTRL0_bf_CCM0_CH1_connectivity);
    reg_if_hw_out_CH1_CCUCTRL0_bf_CapIM0_CH1_connectivity_assert: assert property(reg_if_hw_out_CH1_CCUCTRL0_bf_CapIM0_CH1_connectivity);
    reg_if_hw_in_CH1_CCUVAL0_bf_CCUVAL0_CH1_connectivity_assert: assert property(reg_if_hw_in_CH1_CCUVAL0_bf_CCUVAL0_CH1_connectivity);
    reg_if_hw_en_CH1_CCUVAL0_bf_CCUVAL0_CH1_connectivity_assert: assert property(reg_if_hw_en_CH1_CCUVAL0_bf_CCUVAL0_CH1_connectivity);
    reg_if_hw_out_CH1_CCUVAL0_bf_CCUVAL0_CH1_connectivity_assert: assert property(reg_if_hw_out_CH1_CCUVAL0_bf_CCUVAL0_CH1_connectivity);
    reg_if_hw_out_CH1_CCUCTRL1_bf_CCM1_CH1_connectivity_assert: assert property(reg_if_hw_out_CH1_CCUCTRL1_bf_CCM1_CH1_connectivity);
    reg_if_hw_out_CH1_CCUCTRL1_bf_CapIM1_CH1_connectivity_assert: assert property(reg_if_hw_out_CH1_CCUCTRL1_bf_CapIM1_CH1_connectivity);
    reg_if_hw_in_CH1_CCUVAL1_bf_CCUVAL1_CH1_connectivity_assert: assert property(reg_if_hw_in_CH1_CCUVAL1_bf_CCUVAL1_CH1_connectivity);
    reg_if_hw_en_CH1_CCUVAL1_bf_CCUVAL1_CH1_connectivity_assert: assert property(reg_if_hw_en_CH1_CCUVAL1_bf_CCUVAL1_CH1_connectivity);
    reg_if_hw_out_CH1_CCUVAL1_bf_CCUVAL1_CH1_connectivity_assert: assert property(reg_if_hw_out_CH1_CCUVAL1_bf_CCUVAL1_CH1_connectivity);
    reg_if_hw_out_CH1_CCUCTRL2_bf_CCM2_CH1_connectivity_assert: assert property(reg_if_hw_out_CH1_CCUCTRL2_bf_CCM2_CH1_connectivity);
    reg_if_hw_out_CH1_CCUCTRL2_bf_CapIM2_CH1_connectivity_assert: assert property(reg_if_hw_out_CH1_CCUCTRL2_bf_CapIM2_CH1_connectivity);
    reg_if_hw_in_CH1_CCUVAL2_bf_CCUVAL2_CH1_connectivity_assert: assert property(reg_if_hw_in_CH1_CCUVAL2_bf_CCUVAL2_CH1_connectivity);
    reg_if_hw_en_CH1_CCUVAL2_bf_CCUVAL2_CH1_connectivity_assert: assert property(reg_if_hw_en_CH1_CCUVAL2_bf_CCUVAL2_CH1_connectivity);
    reg_if_hw_out_CH1_CCUVAL2_bf_CCUVAL2_CH1_connectivity_assert: assert property(reg_if_hw_out_CH1_CCUVAL2_bf_CCUVAL2_CH1_connectivity);
    reg_if_hw_out_CH1_CCUCTRL3_bf_CCM3_CH1_connectivity_assert: assert property(reg_if_hw_out_CH1_CCUCTRL3_bf_CCM3_CH1_connectivity);
    reg_if_hw_out_CH1_CCUCTRL3_bf_CapIM3_CH1_connectivity_assert: assert property(reg_if_hw_out_CH1_CCUCTRL3_bf_CapIM3_CH1_connectivity);
    reg_if_hw_in_CH1_CCUVAL3_bf_CCUVAL3_CH1_connectivity_assert: assert property(reg_if_hw_in_CH1_CCUVAL3_bf_CCUVAL3_CH1_connectivity);
    reg_if_hw_en_CH1_CCUVAL3_bf_CCUVAL3_CH1_connectivity_assert: assert property(reg_if_hw_en_CH1_CCUVAL3_bf_CCUVAL3_CH1_connectivity);
    reg_if_hw_out_CH1_CCUVAL3_bf_CCUVAL3_CH1_connectivity_assert: assert property(reg_if_hw_out_CH1_CCUVAL3_bf_CCUVAL3_CH1_connectivity);
    reg_if_hw_out_CH1_CCUCTRL4_bf_CCM4_CH1_connectivity_assert: assert property(reg_if_hw_out_CH1_CCUCTRL4_bf_CCM4_CH1_connectivity);
    reg_if_hw_out_CH1_CCUCTRL4_bf_CapIM4_CH1_connectivity_assert: assert property(reg_if_hw_out_CH1_CCUCTRL4_bf_CapIM4_CH1_connectivity);
    reg_if_hw_in_CH1_CCUVAL4_bf_CCUVAL4_CH1_connectivity_assert: assert property(reg_if_hw_in_CH1_CCUVAL4_bf_CCUVAL4_CH1_connectivity);
    reg_if_hw_en_CH1_CCUVAL4_bf_CCUVAL4_CH1_connectivity_assert: assert property(reg_if_hw_en_CH1_CCUVAL4_bf_CCUVAL4_CH1_connectivity);
    reg_if_hw_out_CH1_CCUVAL4_bf_CCUVAL4_CH1_connectivity_assert: assert property(reg_if_hw_out_CH1_CCUVAL4_bf_CCUVAL4_CH1_connectivity);
    reg_if_hw_out_CH1_CCUCTRL5_bf_CCM5_CH1_connectivity_assert: assert property(reg_if_hw_out_CH1_CCUCTRL5_bf_CCM5_CH1_connectivity);
    reg_if_hw_out_CH1_CCUCTRL5_bf_CapIM5_CH1_connectivity_assert: assert property(reg_if_hw_out_CH1_CCUCTRL5_bf_CapIM5_CH1_connectivity);
    reg_if_hw_in_CH1_CCUVAL5_bf_CCUVAL5_CH1_connectivity_assert: assert property(reg_if_hw_in_CH1_CCUVAL5_bf_CCUVAL5_CH1_connectivity);
    reg_if_hw_en_CH1_CCUVAL5_bf_CCUVAL5_CH1_connectivity_assert: assert property(reg_if_hw_en_CH1_CCUVAL5_bf_CCUVAL5_CH1_connectivity);
    reg_if_hw_out_CH1_CCUVAL5_bf_CCUVAL5_CH1_connectivity_assert: assert property(reg_if_hw_out_CH1_CCUVAL5_bf_CCUVAL5_CH1_connectivity);
    regif_top_ahb_haddr_connectivity_assert: assert property(regif_top_ahb_haddr_connectivity);
    regif_top_ahb_hwdata_connectivity_assert: assert property(regif_top_ahb_hwdata_connectivity);
    regif_top_ahb_hburst_connectivity_assert: assert property(regif_top_ahb_hburst_connectivity);
    regif_top_ahb_hmastlock_connectivity_assert: assert property(regif_top_ahb_hmastlock_connectivity);
    regif_top_ahb_hprot_connectivity_assert: assert property(regif_top_ahb_hprot_connectivity);
    regif_top_ahb_hsize_connectivity_assert: assert property(regif_top_ahb_hsize_connectivity);
    regif_top_ahb_htrans_connectivity_assert: assert property(regif_top_ahb_htrans_connectivity);
    regif_top_ahb_hwrite_connectivity_assert: assert property(regif_top_ahb_hwrite_connectivity);
    regif_top_ahb_hsel_connectivity_assert: assert property(regif_top_ahb_hsel_connectivity);
    regif_top_ahb_hready_connectivity_assert: assert property(regif_top_ahb_hready_connectivity);
    regif_top_ahb_hrdata_connectivity_assert: assert property(regif_top_ahb_hrdata_connectivity);
    regif_top_ahb_hreadyout_connectivity_assert: assert property(regif_top_ahb_hreadyout_connectivity);
    regif_top_ahb_hresp_connectivity_assert: assert property(regif_top_ahb_hresp_connectivity);
    regif_peripheral_hw_out_CH0_CTRLSTAT_bf_TimEn_CH0_connectivity_assert: assert property(regif_peripheral_hw_out_CH0_CTRLSTAT_bf_TimEn_CH0_connectivity);
    regif_peripheral_hw_out_CH0_CTRLSTAT_bf_ResIM_CH0_connectivity_assert: assert property(regif_peripheral_hw_out_CH0_CTRLSTAT_bf_ResIM_CH0_connectivity);
    regif_peripheral_hw_out_CH0_CTRLSTAT_bf_CntIM_CH0_connectivity_assert: assert property(regif_peripheral_hw_out_CH0_CTRLSTAT_bf_CntIM_CH0_connectivity);
    regif_peripheral_hw_out_CH0_CTRLSTAT_bf_OvfIntEn_CH0_connectivity_assert: assert property(regif_peripheral_hw_out_CH0_CTRLSTAT_bf_OvfIntEn_CH0_connectivity);
    regif_peripheral_hw_in_CH0_ACTVAL_bf_ACTVAL_CH0_connectivity_assert: assert property(regif_peripheral_hw_in_CH0_ACTVAL_bf_ACTVAL_CH0_connectivity);
    regif_peripheral_hw_en_CH0_ACTVAL_bf_ACTVAL_CH0_connectivity_assert: assert property(regif_peripheral_hw_en_CH0_ACTVAL_bf_ACTVAL_CH0_connectivity);
    regif_peripheral_hw_out_CH0_ACTVAL_bf_ACTVAL_CH0_connectivity_assert: assert property(regif_peripheral_hw_out_CH0_ACTVAL_bf_ACTVAL_CH0_connectivity);
    regif_peripheral_hw_out_CH0_MAXVAL_bf_MAXVAL_CH0_connectivity_assert: assert property(regif_peripheral_hw_out_CH0_MAXVAL_bf_MAXVAL_CH0_connectivity);
    regif_peripheral_hw_out_CH0_CCUCTRL0_bf_CCM0_CH0_connectivity_assert: assert property(regif_peripheral_hw_out_CH0_CCUCTRL0_bf_CCM0_CH0_connectivity);
    regif_peripheral_hw_out_CH0_CCUCTRL0_bf_CapIM0_CH0_connectivity_assert: assert property(regif_peripheral_hw_out_CH0_CCUCTRL0_bf_CapIM0_CH0_connectivity);
    regif_peripheral_hw_in_CH0_CCUVAL0_bf_CCUVAL0_CH0_connectivity_assert: assert property(regif_peripheral_hw_in_CH0_CCUVAL0_bf_CCUVAL0_CH0_connectivity);
    regif_peripheral_hw_en_CH0_CCUVAL0_bf_CCUVAL0_CH0_connectivity_assert: assert property(regif_peripheral_hw_en_CH0_CCUVAL0_bf_CCUVAL0_CH0_connectivity);
    regif_peripheral_hw_out_CH0_CCUVAL0_bf_CCUVAL0_CH0_connectivity_assert: assert property(regif_peripheral_hw_out_CH0_CCUVAL0_bf_CCUVAL0_CH0_connectivity);
    regif_peripheral_hw_out_CH1_CTRLSTAT_bf_TimEn_CH1_connectivity_assert: assert property(regif_peripheral_hw_out_CH1_CTRLSTAT_bf_TimEn_CH1_connectivity);
    regif_peripheral_hw_out_CH1_CTRLSTAT_bf_ResIM_CH1_connectivity_assert: assert property(regif_peripheral_hw_out_CH1_CTRLSTAT_bf_ResIM_CH1_connectivity);
    regif_peripheral_hw_out_CH1_CTRLSTAT_bf_CntIM_CH1_connectivity_assert: assert property(regif_peripheral_hw_out_CH1_CTRLSTAT_bf_CntIM_CH1_connectivity);
    regif_peripheral_hw_out_CH1_CTRLSTAT_bf_OvfIntEn_CH1_connectivity_assert: assert property(regif_peripheral_hw_out_CH1_CTRLSTAT_bf_OvfIntEn_CH1_connectivity);
    regif_peripheral_hw_in_CH1_ACTVAL_bf_ACTVAL_CH1_connectivity_assert: assert property(regif_peripheral_hw_in_CH1_ACTVAL_bf_ACTVAL_CH1_connectivity);
    regif_peripheral_hw_en_CH1_ACTVAL_bf_ACTVAL_CH1_connectivity_assert: assert property(regif_peripheral_hw_en_CH1_ACTVAL_bf_ACTVAL_CH1_connectivity);
    regif_peripheral_hw_out_CH1_ACTVAL_bf_ACTVAL_CH1_connectivity_assert: assert property(regif_peripheral_hw_out_CH1_ACTVAL_bf_ACTVAL_CH1_connectivity);
    regif_peripheral_hw_out_CH1_MAXVAL_bf_MAXVAL_CH1_connectivity_assert: assert property(regif_peripheral_hw_out_CH1_MAXVAL_bf_MAXVAL_CH1_connectivity);
    regif_peripheral_hw_out_CH1_CCUCTRL0_bf_CCM0_CH1_connectivity_assert: assert property(regif_peripheral_hw_out_CH1_CCUCTRL0_bf_CCM0_CH1_connectivity);
    regif_peripheral_hw_out_CH1_CCUCTRL0_bf_CapIM0_CH1_connectivity_assert: assert property(regif_peripheral_hw_out_CH1_CCUCTRL0_bf_CapIM0_CH1_connectivity);
    regif_peripheral_hw_in_CH1_CCUVAL0_bf_CCUVAL0_CH1_connectivity_assert: assert property(regif_peripheral_hw_in_CH1_CCUVAL0_bf_CCUVAL0_CH1_connectivity);
    regif_peripheral_hw_en_CH1_CCUVAL0_bf_CCUVAL0_CH1_connectivity_assert: assert property(regif_peripheral_hw_en_CH1_CCUVAL0_bf_CCUVAL0_CH1_connectivity);
    regif_peripheral_hw_out_CH1_CCUVAL0_bf_CCUVAL0_CH1_connectivity_assert: assert property(regif_peripheral_hw_out_CH1_CCUVAL0_bf_CCUVAL0_CH1_connectivity);
    regif_peripheral_hw_out_CH1_CCUCTRL1_bf_CCM1_CH1_connectivity_assert: assert property(regif_peripheral_hw_out_CH1_CCUCTRL1_bf_CCM1_CH1_connectivity);
    regif_peripheral_hw_out_CH1_CCUCTRL1_bf_CapIM1_CH1_connectivity_assert: assert property(regif_peripheral_hw_out_CH1_CCUCTRL1_bf_CapIM1_CH1_connectivity);
    regif_peripheral_hw_in_CH1_CCUVAL1_bf_CCUVAL1_CH1_connectivity_assert: assert property(regif_peripheral_hw_in_CH1_CCUVAL1_bf_CCUVAL1_CH1_connectivity);
    regif_peripheral_hw_en_CH1_CCUVAL1_bf_CCUVAL1_CH1_connectivity_assert: assert property(regif_peripheral_hw_en_CH1_CCUVAL1_bf_CCUVAL1_CH1_connectivity);
    regif_peripheral_hw_out_CH1_CCUVAL1_bf_CCUVAL1_CH1_connectivity_assert: assert property(regif_peripheral_hw_out_CH1_CCUVAL1_bf_CCUVAL1_CH1_connectivity);
    regif_peripheral_hw_out_CH1_CCUCTRL2_bf_CCM2_CH1_connectivity_assert: assert property(regif_peripheral_hw_out_CH1_CCUCTRL2_bf_CCM2_CH1_connectivity);
    regif_peripheral_hw_out_CH1_CCUCTRL2_bf_CapIM2_CH1_connectivity_assert: assert property(regif_peripheral_hw_out_CH1_CCUCTRL2_bf_CapIM2_CH1_connectivity);
    regif_peripheral_hw_in_CH1_CCUVAL2_bf_CCUVAL2_CH1_connectivity_assert: assert property(regif_peripheral_hw_in_CH1_CCUVAL2_bf_CCUVAL2_CH1_connectivity);
    regif_peripheral_hw_en_CH1_CCUVAL2_bf_CCUVAL2_CH1_connectivity_assert: assert property(regif_peripheral_hw_en_CH1_CCUVAL2_bf_CCUVAL2_CH1_connectivity);
    regif_peripheral_hw_out_CH1_CCUVAL2_bf_CCUVAL2_CH1_connectivity_assert: assert property(regif_peripheral_hw_out_CH1_CCUVAL2_bf_CCUVAL2_CH1_connectivity);
    regif_peripheral_hw_out_CH1_CCUCTRL3_bf_CCM3_CH1_connectivity_assert: assert property(regif_peripheral_hw_out_CH1_CCUCTRL3_bf_CCM3_CH1_connectivity);
    regif_peripheral_hw_out_CH1_CCUCTRL3_bf_CapIM3_CH1_connectivity_assert: assert property(regif_peripheral_hw_out_CH1_CCUCTRL3_bf_CapIM3_CH1_connectivity);
    regif_peripheral_hw_in_CH1_CCUVAL3_bf_CCUVAL3_CH1_connectivity_assert: assert property(regif_peripheral_hw_in_CH1_CCUVAL3_bf_CCUVAL3_CH1_connectivity);
    regif_peripheral_hw_en_CH1_CCUVAL3_bf_CCUVAL3_CH1_connectivity_assert: assert property(regif_peripheral_hw_en_CH1_CCUVAL3_bf_CCUVAL3_CH1_connectivity);
    regif_peripheral_hw_out_CH1_CCUVAL3_bf_CCUVAL3_CH1_connectivity_assert: assert property(regif_peripheral_hw_out_CH1_CCUVAL3_bf_CCUVAL3_CH1_connectivity);
    regif_peripheral_hw_out_CH1_CCUCTRL4_bf_CCM4_CH1_connectivity_assert: assert property(regif_peripheral_hw_out_CH1_CCUCTRL4_bf_CCM4_CH1_connectivity);
    regif_peripheral_hw_out_CH1_CCUCTRL4_bf_CapIM4_CH1_connectivity_assert: assert property(regif_peripheral_hw_out_CH1_CCUCTRL4_bf_CapIM4_CH1_connectivity);
    regif_peripheral_hw_in_CH1_CCUVAL4_bf_CCUVAL4_CH1_connectivity_assert: assert property(regif_peripheral_hw_in_CH1_CCUVAL4_bf_CCUVAL4_CH1_connectivity);
    regif_peripheral_hw_en_CH1_CCUVAL4_bf_CCUVAL4_CH1_connectivity_assert: assert property(regif_peripheral_hw_en_CH1_CCUVAL4_bf_CCUVAL4_CH1_connectivity);
    regif_peripheral_hw_out_CH1_CCUVAL4_bf_CCUVAL4_CH1_connectivity_assert: assert property(regif_peripheral_hw_out_CH1_CCUVAL4_bf_CCUVAL4_CH1_connectivity);
    regif_peripheral_hw_out_CH1_CCUCTRL5_bf_CCM5_CH1_connectivity_assert: assert property(regif_peripheral_hw_out_CH1_CCUCTRL5_bf_CCM5_CH1_connectivity);
    regif_peripheral_hw_out_CH1_CCUCTRL5_bf_CapIM5_CH1_connectivity_assert: assert property(regif_peripheral_hw_out_CH1_CCUCTRL5_bf_CapIM5_CH1_connectivity);
    regif_peripheral_hw_in_CH1_CCUVAL5_bf_CCUVAL5_CH1_connectivity_assert: assert property(regif_peripheral_hw_in_CH1_CCUVAL5_bf_CCUVAL5_CH1_connectivity);
    regif_peripheral_hw_en_CH1_CCUVAL5_bf_CCUVAL5_CH1_connectivity_assert: assert property(regif_peripheral_hw_en_CH1_CCUVAL5_bf_CCUVAL5_CH1_connectivity);
    regif_peripheral_hw_out_CH1_CCUVAL5_bf_CCUVAL5_CH1_connectivity_assert: assert property(regif_peripheral_hw_out_CH1_CCUVAL5_bf_CCUVAL5_CH1_connectivity);
    ready_after_address_phase_assert: assert property(ready_after_address_phase);
    ready_when_no_transaction_assert: assert property(ready_when_no_transaction);
    hresp_no_error_check_assert: assert property(hresp_no_error_check);
    hresp_when_no_transaction_assert: assert property(hresp_when_no_transaction);
    acc_en_check_assert: assert property(acc_en_check);
    no_acc_en_when_no_transaction_assert: assert property(no_acc_en_when_no_transaction);
    addr_check_assert: assert property(addr_check);
    rdata_check_assert: assert property(rdata_check);
    wdata_check_assert: assert property(wdata_check);
    read_enable_check_assert: assert property(read_enable_check);
    write_enable_check_assert: assert property(write_enable_check);
    access_size_byte_check_assert: assert property(access_size_byte_check);
    access_size_halfword_check_assert: assert property(access_size_halfword_check);
    access_size_word_check_assert: assert property(access_size_word_check);
    bus_error_data_phase_hreadyout_hresp_check_assert: assert property(bus_error_data_phase_hreadyout_hresp_check);
    no_acc_en_when_error_in_address_phase_assert: assert property(no_acc_en_when_error_in_address_phase);
    burst_error_response_assert: assert property(burst_error_response);
    bus_error_two_cycles_assert: assert property(bus_error_two_cycles);

endmodule

//---------------------------------------------------------------------------------------------
bind tc_soc_timer csc_ahb_bridge_prop inst_csc_ahb_bridge_prop(.*);
//---------------------------------------------------------------------------------------------
