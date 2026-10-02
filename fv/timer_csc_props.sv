
module mxnn_csc_prop(
);
//------------------- Includes------------------------------------------------------------------

//-------------------- Macros ------------------------------------------------------------------
//----------------- Global Variables ----------------------------------------------------------




//----------------- Properties ----------------------------------------------------------------

    //Checks if tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 0, then the value of the bf_TimEn_CH0 remains the same
    property default_interface_bf_bf_TimEn_CH0_write_dummy;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_wr_en == 0) ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_TimEn_CH0_output ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_TimEn_CH0_output)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates hardware read properties for the bf_TimEn_CH0
    property default_interface_bf_bf_TimEn_CH0_hardware_read;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_TimEn_CH0_output));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates software write properties for the bf_TimEn_CH0
    property default_interface_bf_bf_TimEn_CH0_sw_write;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_wr_en == 1) && 
	 1 && 
	 ( 1 && 
	 (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 0) ) | ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 0) ) | ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 0) )) ) ) 
	|->
	 (  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_TimEn_CH0_output ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_in[0]))  && 
	 ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_error) == 1'b0) ));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates property to check if the bf_TimEn_CH0 is reset to default value after the tc_soc_timer.HRESET_n_i is triggered
    property default_interface_CH0_CTRLSTAT_bf_TimEn_CH0_ff_reset;
    @(posedge tc_soc_timer.HCLK_i)
        ( $past(( ~tc_soc_timer.HRESET_n_i)) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_TimEn_CH0_output == 1'b0));
    endproperty
//---------------------------------------------------------------------------------------------

    //Checks if tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 0, then the value of the bf_ResIM_CH0 remains the same
    property default_interface_bf_bf_ResIM_CH0_write_dummy;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_wr_en == 0) ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_ResIM_CH0_output ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_ResIM_CH0_output)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates hardware read properties for the bf_ResIM_CH0
    property default_interface_bf_bf_ResIM_CH0_hardware_read;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_ResIM_CH0_output));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates software write properties for the bf_ResIM_CH0
    property default_interface_bf_bf_ResIM_CH0_sw_write;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_wr_en == 1) && 
	 1 && 
	 ( 1 && 
	 (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 0) ) | ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 0) ) | ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 0) )) ) ) 
	|->
	 (  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_ResIM_CH0_output ==  $past((tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_in[3:1])))  && 
	 ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_error) == 1'b0) ));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates property to check if the bf_ResIM_CH0 is reset to default value after the tc_soc_timer.HRESET_n_i is triggered
    property default_interface_CH0_CTRLSTAT_bf_ResIM_CH0_ff_reset;
    @(posedge tc_soc_timer.HCLK_i)
        ( $past(( ~tc_soc_timer.HRESET_n_i)) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_ResIM_CH0_output == 3'b0));
    endproperty
//---------------------------------------------------------------------------------------------

    //Checks if tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 0, then the value of the bf_CntIM_CH0 remains the same
    property default_interface_bf_bf_CntIM_CH0_write_dummy;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_wr_en == 0) ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CntIM_CH0_output ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CntIM_CH0_output)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates hardware read properties for the bf_CntIM_CH0
    property default_interface_bf_bf_CntIM_CH0_hardware_read;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CntIM_CH0_output));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates software write properties for the bf_CntIM_CH0
    property default_interface_bf_bf_CntIM_CH0_sw_write;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_wr_en == 1) && 
	 1 && 
	 ( 1 && 
	 (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 0) ) | ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 0) ) | ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 0) )) ) ) 
	|->
	 (  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CntIM_CH0_output ==  $past((tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_in[6:4])))  && 
	 ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_error) == 1'b0) ));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates property to check if the bf_CntIM_CH0 is reset to default value after the tc_soc_timer.HRESET_n_i is triggered
    property default_interface_CH0_CTRLSTAT_bf_CntIM_CH0_ff_reset;
    @(posedge tc_soc_timer.HCLK_i)
        ( $past(( ~tc_soc_timer.HRESET_n_i)) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CntIM_CH0_output == 3'b0));
    endproperty
//---------------------------------------------------------------------------------------------

    //Checks if tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 0, then the value of the bf_OvfIntEn_CH0 remains the same
    property default_interface_bf_bf_OvfIntEn_CH0_write_dummy;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_wr_en == 0) ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_OvfIntEn_CH0_output ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_OvfIntEn_CH0_output)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates hardware read properties for the bf_OvfIntEn_CH0
    property default_interface_bf_bf_OvfIntEn_CH0_hardware_read;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_OvfIntEn_CH0_out == tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_OvfIntEn_CH0_output));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates software write properties for the bf_OvfIntEn_CH0
    property default_interface_bf_bf_OvfIntEn_CH0_sw_write;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_wr_en == 1) && 
	 1 && 
	 ( 1 && 
	 (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 0) ) | ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 0) ) | ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 0) )) ) ) 
	|->
	 (  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_OvfIntEn_CH0_output ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_in[7]))  && 
	 ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_error) == 1'b0) ));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates property to check if the bf_OvfIntEn_CH0 is reset to default value after the tc_soc_timer.HRESET_n_i is triggered
    property default_interface_CH0_CTRLSTAT_bf_OvfIntEn_CH0_ff_reset;
    @(posedge tc_soc_timer.HCLK_i)
        ( $past(( ~tc_soc_timer.HRESET_n_i)) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_OvfIntEn_CH0_output == 1'b0));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates a property for reading a word
    property default_interface_CH0_CTRLSTAT_sw_word_read;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 0) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {24'b0,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_OvfIntEn_CH0_output,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CntIM_CH0_output,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_ResIM_CH0_output,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_TimEn_CH0_output}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates a property for reading a half word
    property default_interface_CH0_CTRLSTAT_sw_half_word_read_0;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 1) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {16'b0,({24'b0,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_OvfIntEn_CH0_output,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CntIM_CH0_output,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_ResIM_CH0_output,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_TimEn_CH0_output}[15:0])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates a property for reading a half word
    property default_interface_CH0_CTRLSTAT_sw_half_word_read_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 1) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {16'b0,({24'b0,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_OvfIntEn_CH0_output,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CntIM_CH0_output,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_ResIM_CH0_output,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_TimEn_CH0_output}[31:16])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generate a property for reading a byte
    property default_interface_CH0_CTRLSTAT_sw_byte_read_0;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {24'b0,({24'b0,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_OvfIntEn_CH0_output,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CntIM_CH0_output,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_ResIM_CH0_output,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_TimEn_CH0_output}[7:0])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generate a property for reading a byte
    property default_interface_CH0_CTRLSTAT_sw_byte_read_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {24'b0,({24'b0,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_OvfIntEn_CH0_output,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CntIM_CH0_output,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_ResIM_CH0_output,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_TimEn_CH0_output}[15:8])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generate a property for reading a byte
    property default_interface_CH0_CTRLSTAT_sw_byte_read_2;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {24'b0,({24'b0,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_OvfIntEn_CH0_output,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CntIM_CH0_output,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_ResIM_CH0_output,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_TimEn_CH0_output}[23:16])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generate a property for reading a byte
    property default_interface_CH0_CTRLSTAT_sw_byte_read_3;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {24'b0,({24'b0,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_OvfIntEn_CH0_output,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CntIM_CH0_output,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_ResIM_CH0_output,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_TimEn_CH0_output}[31:24])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates software write properties for the bf_ACTVAL_CH0
    property default_interface_bf_bf_ACTVAL_CH0_sw_write;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_peripheral_wr_en == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_wr_en == 1) ) && 
	 1 && 
	 ( 1 && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 0) ) ) 
	|->
	 ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_ACTVAL_CH0_flipflop_in == (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_in[31:0])) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_error == 1'b0) ));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates software access error properties for the bf_ACTVAL_CH0
    property default_interface_bf_bf_ACTVAL_CH0_sw_access_error;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 && 
	 (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 1) && 
	 ((tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 4) | (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 6)) ) | ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) && 
	 ((tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 4) | (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 5) | (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 6) | (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 7)) )) ) && 
	 ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_peripheral_wr_en == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_wr_en == 1) ) ) 
	|->
	 ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_error == 1'b1)  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_ACTVAL_CH0_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_ACTVAL_CH0_flipflop_out))  ));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates a property for reading a word
    property default_interface_CH0_ACTVAL_sw_word_read;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 0) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_ACTVAL_CH0_flipflop_out));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates a property for reading a half word
    property default_interface_CH0_ACTVAL_sw_half_word_read_0;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 1) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {16'b0,(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_ACTVAL_CH0_flipflop_out[15:0])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates a property for reading a half word
    property default_interface_CH0_ACTVAL_sw_half_word_read_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 1) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {16'b0,(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_ACTVAL_CH0_flipflop_out[31:16])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generate a property for reading a byte
    property default_interface_CH0_ACTVAL_sw_byte_read_0;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {24'b0,(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_ACTVAL_CH0_flipflop_out[7:0])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generate a property for reading a byte
    property default_interface_CH0_ACTVAL_sw_byte_read_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 5) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {24'b0,(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_ACTVAL_CH0_flipflop_out[15:8])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generate a property for reading a byte
    property default_interface_CH0_ACTVAL_sw_byte_read_2;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {24'b0,(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_ACTVAL_CH0_flipflop_out[23:16])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generate a property for reading a byte
    property default_interface_CH0_ACTVAL_sw_byte_read_3;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {24'b0,(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_ACTVAL_CH0_flipflop_out[31:24])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates software write properties for the bf_MAXVAL_CH0
    property default_interface_bf_bf_MAXVAL_CH0_sw_write;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_wr_en == 1) && 
	 1 && 
	 ( 1 && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 8) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 0) ) ) 
	|->
	 ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_MAXVAL_CH0_flipflop_in == (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_in[31:0])) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_error == 1'b0) ));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates software access error properties for the bf_MAXVAL_CH0
    property default_interface_bf_bf_MAXVAL_CH0_sw_access_error;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 && 
	 (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 1) && 
	 ((tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 8) | (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 10)) ) | ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) && 
	 ((tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 8) | (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 9) | (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 10) | (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 11)) )) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_wr_en == 1) ) 
	|->
	 ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_error == 1'b1)  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_MAXVAL_CH0_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_MAXVAL_CH0_flipflop_out))  ));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates a property for reading a word
    property default_interface_CH0_MAXVAL_sw_word_read;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 8) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 0) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_MAXVAL_CH0_flipflop_out));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates a property for reading a half word
    property default_interface_CH0_MAXVAL_sw_half_word_read_0;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 8) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 1) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {16'b0,(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_MAXVAL_CH0_flipflop_out[15:0])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates a property for reading a half word
    property default_interface_CH0_MAXVAL_sw_half_word_read_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 10) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 1) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {16'b0,(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_MAXVAL_CH0_flipflop_out[31:16])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generate a property for reading a byte
    property default_interface_CH0_MAXVAL_sw_byte_read_0;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 8) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {24'b0,(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_MAXVAL_CH0_flipflop_out[7:0])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generate a property for reading a byte
    property default_interface_CH0_MAXVAL_sw_byte_read_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 9) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {24'b0,(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_MAXVAL_CH0_flipflop_out[15:8])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generate a property for reading a byte
    property default_interface_CH0_MAXVAL_sw_byte_read_2;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 10) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {24'b0,(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_MAXVAL_CH0_flipflop_out[23:16])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generate a property for reading a byte
    property default_interface_CH0_MAXVAL_sw_byte_read_3;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 11) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {24'b0,(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_MAXVAL_CH0_flipflop_out[31:24])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Checks if tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 0, then the value of the bf_CCM0_CH0 remains the same
    property default_interface_bf_bf_CCM0_CH0_write_dummy;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_wr_en == 0) ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCM0_CH0_output ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCM0_CH0_output)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates hardware read properties for the bf_CCM0_CH0
    property default_interface_bf_bf_CCM0_CH0_hardware_read;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM0_CH0_out == tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCM0_CH0_output));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates software write properties for the bf_CCM0_CH0
    property default_interface_bf_bf_CCM0_CH0_sw_write;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_wr_en == 1) && 
	 1 && 
	 ( 1 && 
	 (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 12) ) | ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 12) ) | ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 12) )) ) ) 
	|->
	 (  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCM0_CH0_output ==  $past((tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_in[2:0])))  && 
	 ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_error) == 1'b0) ));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates property to check if the bf_CCM0_CH0 is reset to default value after the tc_soc_timer.HRESET_n_i is triggered
    property default_interface_CH0_CCUCTRL0_bf_CCM0_CH0_ff_reset;
    @(posedge tc_soc_timer.HCLK_i)
        ( $past(( ~tc_soc_timer.HRESET_n_i)) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCM0_CH0_output == 3'b0));
    endproperty
//---------------------------------------------------------------------------------------------

    //Checks if tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 0, then the value of the bf_CapIM0_CH0 remains the same
    property default_interface_bf_bf_CapIM0_CH0_write_dummy;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_wr_en == 0) ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CapIM0_CH0_output ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CapIM0_CH0_output)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates hardware read properties for the bf_CapIM0_CH0
    property default_interface_bf_bf_CapIM0_CH0_hardware_read;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM0_CH0_out == tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CapIM0_CH0_output));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates software write properties for the bf_CapIM0_CH0
    property default_interface_bf_bf_CapIM0_CH0_sw_write;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_wr_en == 1) && 
	 1 && 
	 ( 1 && 
	 (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 12) ) | ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 12) ) | ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 12) )) ) ) 
	|->
	 (  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CapIM0_CH0_output ==  $past((tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_in[5:3])))  && 
	 ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_error) == 1'b0) ));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates property to check if the bf_CapIM0_CH0 is reset to default value after the tc_soc_timer.HRESET_n_i is triggered
    property default_interface_CH0_CCUCTRL0_bf_CapIM0_CH0_ff_reset;
    @(posedge tc_soc_timer.HCLK_i)
        ( $past(( ~tc_soc_timer.HRESET_n_i)) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CapIM0_CH0_output == 3'b0));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates a property for reading a word
    property default_interface_CH0_CCUCTRL0_sw_word_read;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 12) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 0) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {26'b0,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CapIM0_CH0_output,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCM0_CH0_output}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates a property for reading a half word
    property default_interface_CH0_CCUCTRL0_sw_half_word_read_0;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 12) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 1) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {16'b0,({26'b0,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CapIM0_CH0_output,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCM0_CH0_output}[15:0])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates a property for reading a half word
    property default_interface_CH0_CCUCTRL0_sw_half_word_read_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 14) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 1) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {16'b0,({26'b0,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CapIM0_CH0_output,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCM0_CH0_output}[31:16])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generate a property for reading a byte
    property default_interface_CH0_CCUCTRL0_sw_byte_read_0;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 12) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {24'b0,({26'b0,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CapIM0_CH0_output,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCM0_CH0_output}[7:0])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generate a property for reading a byte
    property default_interface_CH0_CCUCTRL0_sw_byte_read_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 13) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {24'b0,({26'b0,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CapIM0_CH0_output,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCM0_CH0_output}[15:8])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generate a property for reading a byte
    property default_interface_CH0_CCUCTRL0_sw_byte_read_2;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 14) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {24'b0,({26'b0,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CapIM0_CH0_output,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCM0_CH0_output}[23:16])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generate a property for reading a byte
    property default_interface_CH0_CCUCTRL0_sw_byte_read_3;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 15) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {24'b0,({26'b0,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CapIM0_CH0_output,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCM0_CH0_output}[31:24])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates software write properties for the bf_CCUVAL0_CH0
    property default_interface_bf_bf_CCUVAL0_CH0_sw_write;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL0_CH0_peripheral_wr_en == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_wr_en == 1) ) && 
	 1 && 
	 ( 1 && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 16) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 0) ) ) 
	|->
	 ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCUVAL0_CH0_flipflop_in == (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_in[31:0])) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_error == 1'b0) ));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates software access error properties for the bf_CCUVAL0_CH0
    property default_interface_bf_bf_CCUVAL0_CH0_sw_access_error;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 && 
	 (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 1) && 
	 ((tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 16) | (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 18)) ) | ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) && 
	 ((tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 16) | (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 17) | (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 18) | (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 19)) )) ) && 
	 ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL0_CH0_peripheral_wr_en == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_wr_en == 1) ) ) 
	|->
	 ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_error == 1'b1)  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCUVAL0_CH0_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCUVAL0_CH0_flipflop_out))  ));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates a property for reading a word
    property default_interface_CH0_CCUVAL0_sw_word_read;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 16) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 0) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCUVAL0_CH0_flipflop_out));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates a property for reading a half word
    property default_interface_CH0_CCUVAL0_sw_half_word_read_0;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 16) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 1) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {16'b0,(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCUVAL0_CH0_flipflop_out[15:0])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates a property for reading a half word
    property default_interface_CH0_CCUVAL0_sw_half_word_read_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 18) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 1) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {16'b0,(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCUVAL0_CH0_flipflop_out[31:16])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generate a property for reading a byte
    property default_interface_CH0_CCUVAL0_sw_byte_read_0;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 16) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {24'b0,(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCUVAL0_CH0_flipflop_out[7:0])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generate a property for reading a byte
    property default_interface_CH0_CCUVAL0_sw_byte_read_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 17) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {24'b0,(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCUVAL0_CH0_flipflop_out[15:8])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generate a property for reading a byte
    property default_interface_CH0_CCUVAL0_sw_byte_read_2;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 18) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {24'b0,(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCUVAL0_CH0_flipflop_out[23:16])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generate a property for reading a byte
    property default_interface_CH0_CCUVAL0_sw_byte_read_3;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 19) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {24'b0,(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCUVAL0_CH0_flipflop_out[31:24])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Checks if tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 0, then the value of the bf_TimEn_CH1 remains the same
    property default_interface_bf_bf_TimEn_CH1_write_dummy;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_wr_en == 0) ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_TimEn_CH1_output ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_TimEn_CH1_output)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates hardware read properties for the bf_TimEn_CH1
    property default_interface_bf_bf_TimEn_CH1_hardware_read;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_TimEn_CH1_output));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates software write properties for the bf_TimEn_CH1
    property default_interface_bf_bf_TimEn_CH1_sw_write;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_wr_en == 1) && 
	 1 && 
	 ( 1 && 
	 (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 20) ) | ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 20) ) | ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 20) )) ) ) 
	|->
	 (  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_TimEn_CH1_output ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_in[0]))  && 
	 ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_error) == 1'b0) ));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates property to check if the bf_TimEn_CH1 is reset to default value after the tc_soc_timer.HRESET_n_i is triggered
    property default_interface_CH1_CTRLSTAT_bf_TimEn_CH1_ff_reset;
    @(posedge tc_soc_timer.HCLK_i)
        ( $past(( ~tc_soc_timer.HRESET_n_i)) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_TimEn_CH1_output == 1'b0));
    endproperty
//---------------------------------------------------------------------------------------------

    //Checks if tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 0, then the value of the bf_ResIM_CH1 remains the same
    property default_interface_bf_bf_ResIM_CH1_write_dummy;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_wr_en == 0) ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_ResIM_CH1_output ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_ResIM_CH1_output)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates hardware read properties for the bf_ResIM_CH1
    property default_interface_bf_bf_ResIM_CH1_hardware_read;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_ResIM_CH1_output));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates software write properties for the bf_ResIM_CH1
    property default_interface_bf_bf_ResIM_CH1_sw_write;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_wr_en == 1) && 
	 1 && 
	 ( 1 && 
	 (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 20) ) | ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 20) ) | ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 20) )) ) ) 
	|->
	 (  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_ResIM_CH1_output ==  $past((tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_in[3:1])))  && 
	 ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_error) == 1'b0) ));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates property to check if the bf_ResIM_CH1 is reset to default value after the tc_soc_timer.HRESET_n_i is triggered
    property default_interface_CH1_CTRLSTAT_bf_ResIM_CH1_ff_reset;
    @(posedge tc_soc_timer.HCLK_i)
        ( $past(( ~tc_soc_timer.HRESET_n_i)) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_ResIM_CH1_output == 3'b0));
    endproperty
//---------------------------------------------------------------------------------------------

    //Checks if tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 0, then the value of the bf_CntIM_CH1 remains the same
    property default_interface_bf_bf_CntIM_CH1_write_dummy;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_wr_en == 0) ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CntIM_CH1_output ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CntIM_CH1_output)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates hardware read properties for the bf_CntIM_CH1
    property default_interface_bf_bf_CntIM_CH1_hardware_read;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CntIM_CH1_output));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates software write properties for the bf_CntIM_CH1
    property default_interface_bf_bf_CntIM_CH1_sw_write;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_wr_en == 1) && 
	 1 && 
	 ( 1 && 
	 (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 20) ) | ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 20) ) | ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 20) )) ) ) 
	|->
	 (  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CntIM_CH1_output ==  $past((tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_in[6:4])))  && 
	 ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_error) == 1'b0) ));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates property to check if the bf_CntIM_CH1 is reset to default value after the tc_soc_timer.HRESET_n_i is triggered
    property default_interface_CH1_CTRLSTAT_bf_CntIM_CH1_ff_reset;
    @(posedge tc_soc_timer.HCLK_i)
        ( $past(( ~tc_soc_timer.HRESET_n_i)) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CntIM_CH1_output == 3'b0));
    endproperty
//---------------------------------------------------------------------------------------------

    //Checks if tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 0, then the value of the bf_OvfIntEn_CH1 remains the same
    property default_interface_bf_bf_OvfIntEn_CH1_write_dummy;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_wr_en == 0) ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_OvfIntEn_CH1_output ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_OvfIntEn_CH1_output)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates hardware read properties for the bf_OvfIntEn_CH1
    property default_interface_bf_bf_OvfIntEn_CH1_hardware_read;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_OvfIntEn_CH1_out == tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_OvfIntEn_CH1_output));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates software write properties for the bf_OvfIntEn_CH1
    property default_interface_bf_bf_OvfIntEn_CH1_sw_write;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_wr_en == 1) && 
	 1 && 
	 ( 1 && 
	 (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 20) ) | ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 20) ) | ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 20) )) ) ) 
	|->
	 (  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_OvfIntEn_CH1_output ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_in[7]))  && 
	 ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_error) == 1'b0) ));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates property to check if the bf_OvfIntEn_CH1 is reset to default value after the tc_soc_timer.HRESET_n_i is triggered
    property default_interface_CH1_CTRLSTAT_bf_OvfIntEn_CH1_ff_reset;
    @(posedge tc_soc_timer.HCLK_i)
        ( $past(( ~tc_soc_timer.HRESET_n_i)) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_OvfIntEn_CH1_output == 1'b0));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates a property for reading a word
    property default_interface_CH1_CTRLSTAT_sw_word_read;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 20) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 0) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {24'b0,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_OvfIntEn_CH1_output,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CntIM_CH1_output,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_ResIM_CH1_output,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_TimEn_CH1_output}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates a property for reading a half word
    property default_interface_CH1_CTRLSTAT_sw_half_word_read_0;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 20) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 1) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {16'b0,({24'b0,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_OvfIntEn_CH1_output,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CntIM_CH1_output,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_ResIM_CH1_output,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_TimEn_CH1_output}[15:0])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates a property for reading a half word
    property default_interface_CH1_CTRLSTAT_sw_half_word_read_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 22) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 1) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {16'b0,({24'b0,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_OvfIntEn_CH1_output,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CntIM_CH1_output,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_ResIM_CH1_output,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_TimEn_CH1_output}[31:16])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generate a property for reading a byte
    property default_interface_CH1_CTRLSTAT_sw_byte_read_0;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 20) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {24'b0,({24'b0,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_OvfIntEn_CH1_output,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CntIM_CH1_output,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_ResIM_CH1_output,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_TimEn_CH1_output}[7:0])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generate a property for reading a byte
    property default_interface_CH1_CTRLSTAT_sw_byte_read_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 21) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {24'b0,({24'b0,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_OvfIntEn_CH1_output,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CntIM_CH1_output,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_ResIM_CH1_output,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_TimEn_CH1_output}[15:8])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generate a property for reading a byte
    property default_interface_CH1_CTRLSTAT_sw_byte_read_2;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 22) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {24'b0,({24'b0,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_OvfIntEn_CH1_output,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CntIM_CH1_output,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_ResIM_CH1_output,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_TimEn_CH1_output}[23:16])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generate a property for reading a byte
    property default_interface_CH1_CTRLSTAT_sw_byte_read_3;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 23) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {24'b0,({24'b0,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_OvfIntEn_CH1_output,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CntIM_CH1_output,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_ResIM_CH1_output,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_TimEn_CH1_output}[31:24])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates software write properties for the bf_ACTVAL_CH1
    property default_interface_bf_bf_ACTVAL_CH1_sw_write;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_peripheral_wr_en == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_wr_en == 1) ) && 
	 1 && 
	 ( 1 && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 24) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 0) ) ) 
	|->
	 ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_ACTVAL_CH1_flipflop_in == (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_in[31:0])) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_error == 1'b0) ));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates software access error properties for the bf_ACTVAL_CH1
    property default_interface_bf_bf_ACTVAL_CH1_sw_access_error;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 && 
	 (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 1) && 
	 ((tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 24) | (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 26)) ) | ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) && 
	 ((tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 24) | (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 25) | (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 26) | (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 27)) )) ) && 
	 ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_peripheral_wr_en == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_wr_en == 1) ) ) 
	|->
	 ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_error == 1'b1)  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_ACTVAL_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_ACTVAL_CH1_flipflop_out))  ));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates a property for reading a word
    property default_interface_CH1_ACTVAL_sw_word_read;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 24) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 0) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_ACTVAL_CH1_flipflop_out));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates a property for reading a half word
    property default_interface_CH1_ACTVAL_sw_half_word_read_0;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 24) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 1) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {16'b0,(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_ACTVAL_CH1_flipflop_out[15:0])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates a property for reading a half word
    property default_interface_CH1_ACTVAL_sw_half_word_read_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 26) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 1) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {16'b0,(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_ACTVAL_CH1_flipflop_out[31:16])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generate a property for reading a byte
    property default_interface_CH1_ACTVAL_sw_byte_read_0;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 24) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {24'b0,(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_ACTVAL_CH1_flipflop_out[7:0])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generate a property for reading a byte
    property default_interface_CH1_ACTVAL_sw_byte_read_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 25) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {24'b0,(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_ACTVAL_CH1_flipflop_out[15:8])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generate a property for reading a byte
    property default_interface_CH1_ACTVAL_sw_byte_read_2;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 26) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {24'b0,(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_ACTVAL_CH1_flipflop_out[23:16])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generate a property for reading a byte
    property default_interface_CH1_ACTVAL_sw_byte_read_3;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 27) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {24'b0,(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_ACTVAL_CH1_flipflop_out[31:24])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates software write properties for the bf_MAXVAL_CH1
    property default_interface_bf_bf_MAXVAL_CH1_sw_write;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_wr_en == 1) && 
	 1 && 
	 ( 1 && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 28) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 0) ) ) 
	|->
	 ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_MAXVAL_CH1_flipflop_in == (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_in[31:0])) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_error == 1'b0) ));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates software access error properties for the bf_MAXVAL_CH1
    property default_interface_bf_bf_MAXVAL_CH1_sw_access_error;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 && 
	 (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 1) && 
	 ((tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 28) | (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 30)) ) | ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) && 
	 ((tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 28) | (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 29) | (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 30) | (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 31)) )) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_wr_en == 1) ) 
	|->
	 ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_error == 1'b1)  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_MAXVAL_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_MAXVAL_CH1_flipflop_out))  ));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates a property for reading a word
    property default_interface_CH1_MAXVAL_sw_word_read;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 28) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 0) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_MAXVAL_CH1_flipflop_out));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates a property for reading a half word
    property default_interface_CH1_MAXVAL_sw_half_word_read_0;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 28) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 1) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {16'b0,(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_MAXVAL_CH1_flipflop_out[15:0])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates a property for reading a half word
    property default_interface_CH1_MAXVAL_sw_half_word_read_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 30) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 1) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {16'b0,(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_MAXVAL_CH1_flipflop_out[31:16])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generate a property for reading a byte
    property default_interface_CH1_MAXVAL_sw_byte_read_0;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 28) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {24'b0,(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_MAXVAL_CH1_flipflop_out[7:0])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generate a property for reading a byte
    property default_interface_CH1_MAXVAL_sw_byte_read_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 29) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {24'b0,(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_MAXVAL_CH1_flipflop_out[15:8])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generate a property for reading a byte
    property default_interface_CH1_MAXVAL_sw_byte_read_2;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 30) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {24'b0,(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_MAXVAL_CH1_flipflop_out[23:16])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generate a property for reading a byte
    property default_interface_CH1_MAXVAL_sw_byte_read_3;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 31) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {24'b0,(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_MAXVAL_CH1_flipflop_out[31:24])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Checks if tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 0, then the value of the bf_CCM0_CH1 remains the same
    property default_interface_bf_bf_CCM0_CH1_write_dummy;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_wr_en == 0) ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCM0_CH1_output ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCM0_CH1_output)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates hardware read properties for the bf_CCM0_CH1
    property default_interface_bf_bf_CCM0_CH1_hardware_read;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM0_CH1_out == tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCM0_CH1_output));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates software write properties for the bf_CCM0_CH1
    property default_interface_bf_bf_CCM0_CH1_sw_write;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_wr_en == 1) && 
	 1 && 
	 ( 1 && 
	 (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 32) ) | ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 32) ) | ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 32) )) ) ) 
	|->
	 (  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCM0_CH1_output ==  $past((tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_in[2:0])))  && 
	 ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_error) == 1'b0) ));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates property to check if the bf_CCM0_CH1 is reset to default value after the tc_soc_timer.HRESET_n_i is triggered
    property default_interface_CH1_CCUCTRL0_bf_CCM0_CH1_ff_reset;
    @(posedge tc_soc_timer.HCLK_i)
        ( $past(( ~tc_soc_timer.HRESET_n_i)) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCM0_CH1_output == 3'b0));
    endproperty
//---------------------------------------------------------------------------------------------

    //Checks if tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 0, then the value of the bf_CapIM0_CH1 remains the same
    property default_interface_bf_bf_CapIM0_CH1_write_dummy;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_wr_en == 0) ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CapIM0_CH1_output ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CapIM0_CH1_output)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates hardware read properties for the bf_CapIM0_CH1
    property default_interface_bf_bf_CapIM0_CH1_hardware_read;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM0_CH1_out == tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CapIM0_CH1_output));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates software write properties for the bf_CapIM0_CH1
    property default_interface_bf_bf_CapIM0_CH1_sw_write;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_wr_en == 1) && 
	 1 && 
	 ( 1 && 
	 (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 32) ) | ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 32) ) | ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 32) )) ) ) 
	|->
	 (  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CapIM0_CH1_output ==  $past((tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_in[5:3])))  && 
	 ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_error) == 1'b0) ));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates property to check if the bf_CapIM0_CH1 is reset to default value after the tc_soc_timer.HRESET_n_i is triggered
    property default_interface_CH1_CCUCTRL0_bf_CapIM0_CH1_ff_reset;
    @(posedge tc_soc_timer.HCLK_i)
        ( $past(( ~tc_soc_timer.HRESET_n_i)) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CapIM0_CH1_output == 3'b0));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates a property for reading a word
    property default_interface_CH1_CCUCTRL0_sw_word_read;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 32) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 0) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {26'b0,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CapIM0_CH1_output,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCM0_CH1_output}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates a property for reading a half word
    property default_interface_CH1_CCUCTRL0_sw_half_word_read_0;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 32) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 1) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {16'b0,({26'b0,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CapIM0_CH1_output,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCM0_CH1_output}[15:0])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates a property for reading a half word
    property default_interface_CH1_CCUCTRL0_sw_half_word_read_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 34) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 1) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {16'b0,({26'b0,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CapIM0_CH1_output,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCM0_CH1_output}[31:16])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generate a property for reading a byte
    property default_interface_CH1_CCUCTRL0_sw_byte_read_0;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 32) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {24'b0,({26'b0,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CapIM0_CH1_output,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCM0_CH1_output}[7:0])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generate a property for reading a byte
    property default_interface_CH1_CCUCTRL0_sw_byte_read_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 33) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {24'b0,({26'b0,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CapIM0_CH1_output,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCM0_CH1_output}[15:8])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generate a property for reading a byte
    property default_interface_CH1_CCUCTRL0_sw_byte_read_2;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 34) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {24'b0,({26'b0,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CapIM0_CH1_output,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCM0_CH1_output}[23:16])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generate a property for reading a byte
    property default_interface_CH1_CCUCTRL0_sw_byte_read_3;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 35) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {24'b0,({26'b0,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CapIM0_CH1_output,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCM0_CH1_output}[31:24])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates software write properties for the bf_CCUVAL0_CH1
    property default_interface_bf_bf_CCUVAL0_CH1_sw_write;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL0_CH1_peripheral_wr_en == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_wr_en == 1) ) && 
	 1 && 
	 ( 1 && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 36) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 0) ) ) 
	|->
	 ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCUVAL0_CH1_flipflop_in == (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_in[31:0])) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_error == 1'b0) ));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates software access error properties for the bf_CCUVAL0_CH1
    property default_interface_bf_bf_CCUVAL0_CH1_sw_access_error;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 && 
	 (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 1) && 
	 ((tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 36) | (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 38)) ) | ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) && 
	 ((tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 36) | (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 37) | (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 38) | (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 39)) )) ) && 
	 ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL0_CH1_peripheral_wr_en == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_wr_en == 1) ) ) 
	|->
	 ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_error == 1'b1)  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCUVAL0_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCUVAL0_CH1_flipflop_out))  ));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates a property for reading a word
    property default_interface_CH1_CCUVAL0_sw_word_read;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 36) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 0) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCUVAL0_CH1_flipflop_out));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates a property for reading a half word
    property default_interface_CH1_CCUVAL0_sw_half_word_read_0;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 36) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 1) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {16'b0,(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCUVAL0_CH1_flipflop_out[15:0])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates a property for reading a half word
    property default_interface_CH1_CCUVAL0_sw_half_word_read_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 38) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 1) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {16'b0,(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCUVAL0_CH1_flipflop_out[31:16])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generate a property for reading a byte
    property default_interface_CH1_CCUVAL0_sw_byte_read_0;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 36) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {24'b0,(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCUVAL0_CH1_flipflop_out[7:0])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generate a property for reading a byte
    property default_interface_CH1_CCUVAL0_sw_byte_read_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 37) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {24'b0,(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCUVAL0_CH1_flipflop_out[15:8])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generate a property for reading a byte
    property default_interface_CH1_CCUVAL0_sw_byte_read_2;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 38) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {24'b0,(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCUVAL0_CH1_flipflop_out[23:16])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generate a property for reading a byte
    property default_interface_CH1_CCUVAL0_sw_byte_read_3;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 39) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {24'b0,(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCUVAL0_CH1_flipflop_out[31:24])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Checks if tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 0, then the value of the bf_CCM1_CH1 remains the same
    property default_interface_bf_bf_CCM1_CH1_write_dummy;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_wr_en == 0) ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCM1_CH1_output ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCM1_CH1_output)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates hardware read properties for the bf_CCM1_CH1
    property default_interface_bf_bf_CCM1_CH1_hardware_read;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM1_CH1_out == tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCM1_CH1_output));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates software write properties for the bf_CCM1_CH1
    property default_interface_bf_bf_CCM1_CH1_sw_write;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_wr_en == 1) && 
	 1 && 
	 ( 1 && 
	 (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 40) ) | ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 40) ) | ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 40) )) ) ) 
	|->
	 (  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCM1_CH1_output ==  $past((tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_in[2:0])))  && 
	 ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_error) == 1'b0) ));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates property to check if the bf_CCM1_CH1 is reset to default value after the tc_soc_timer.HRESET_n_i is triggered
    property default_interface_CH1_CCUCTRL1_bf_CCM1_CH1_ff_reset;
    @(posedge tc_soc_timer.HCLK_i)
        ( $past(( ~tc_soc_timer.HRESET_n_i)) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCM1_CH1_output == 3'b0));
    endproperty
//---------------------------------------------------------------------------------------------

    //Checks if tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 0, then the value of the bf_CapIM1_CH1 remains the same
    property default_interface_bf_bf_CapIM1_CH1_write_dummy;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_wr_en == 0) ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CapIM1_CH1_output ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CapIM1_CH1_output)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates hardware read properties for the bf_CapIM1_CH1
    property default_interface_bf_bf_CapIM1_CH1_hardware_read;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM1_CH1_out == tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CapIM1_CH1_output));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates software write properties for the bf_CapIM1_CH1
    property default_interface_bf_bf_CapIM1_CH1_sw_write;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_wr_en == 1) && 
	 1 && 
	 ( 1 && 
	 (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 40) ) | ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 40) ) | ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 40) )) ) ) 
	|->
	 (  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CapIM1_CH1_output ==  $past((tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_in[5:3])))  && 
	 ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_error) == 1'b0) ));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates property to check if the bf_CapIM1_CH1 is reset to default value after the tc_soc_timer.HRESET_n_i is triggered
    property default_interface_CH1_CCUCTRL1_bf_CapIM1_CH1_ff_reset;
    @(posedge tc_soc_timer.HCLK_i)
        ( $past(( ~tc_soc_timer.HRESET_n_i)) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CapIM1_CH1_output == 3'b0));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates a property for reading a word
    property default_interface_CH1_CCUCTRL1_sw_word_read;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 40) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 0) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {26'b0,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CapIM1_CH1_output,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCM1_CH1_output}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates a property for reading a half word
    property default_interface_CH1_CCUCTRL1_sw_half_word_read_0;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 40) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 1) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {16'b0,({26'b0,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CapIM1_CH1_output,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCM1_CH1_output}[15:0])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates a property for reading a half word
    property default_interface_CH1_CCUCTRL1_sw_half_word_read_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 42) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 1) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {16'b0,({26'b0,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CapIM1_CH1_output,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCM1_CH1_output}[31:16])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generate a property for reading a byte
    property default_interface_CH1_CCUCTRL1_sw_byte_read_0;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 40) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {24'b0,({26'b0,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CapIM1_CH1_output,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCM1_CH1_output}[7:0])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generate a property for reading a byte
    property default_interface_CH1_CCUCTRL1_sw_byte_read_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 41) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {24'b0,({26'b0,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CapIM1_CH1_output,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCM1_CH1_output}[15:8])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generate a property for reading a byte
    property default_interface_CH1_CCUCTRL1_sw_byte_read_2;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 42) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {24'b0,({26'b0,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CapIM1_CH1_output,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCM1_CH1_output}[23:16])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generate a property for reading a byte
    property default_interface_CH1_CCUCTRL1_sw_byte_read_3;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 43) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {24'b0,({26'b0,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CapIM1_CH1_output,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCM1_CH1_output}[31:24])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates software write properties for the bf_CCUVAL1_CH1
    property default_interface_bf_bf_CCUVAL1_CH1_sw_write;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL1_CH1_peripheral_wr_en == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_wr_en == 1) ) && 
	 1 && 
	 ( 1 && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 44) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 0) ) ) 
	|->
	 ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCUVAL1_CH1_flipflop_in == (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_in[31:0])) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_error == 1'b0) ));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates software access error properties for the bf_CCUVAL1_CH1
    property default_interface_bf_bf_CCUVAL1_CH1_sw_access_error;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 && 
	 (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 1) && 
	 ((tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 44) | (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 46)) ) | ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) && 
	 ((tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 44) | (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 45) | (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 46) | (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 47)) )) ) && 
	 ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL1_CH1_peripheral_wr_en == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_wr_en == 1) ) ) 
	|->
	 ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_error == 1'b1)  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCUVAL1_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCUVAL1_CH1_flipflop_out))  ));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates a property for reading a word
    property default_interface_CH1_CCUVAL1_sw_word_read;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 44) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 0) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCUVAL1_CH1_flipflop_out));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates a property for reading a half word
    property default_interface_CH1_CCUVAL1_sw_half_word_read_0;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 44) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 1) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {16'b0,(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCUVAL1_CH1_flipflop_out[15:0])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates a property for reading a half word
    property default_interface_CH1_CCUVAL1_sw_half_word_read_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 46) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 1) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {16'b0,(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCUVAL1_CH1_flipflop_out[31:16])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generate a property for reading a byte
    property default_interface_CH1_CCUVAL1_sw_byte_read_0;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 44) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {24'b0,(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCUVAL1_CH1_flipflop_out[7:0])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generate a property for reading a byte
    property default_interface_CH1_CCUVAL1_sw_byte_read_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 45) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {24'b0,(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCUVAL1_CH1_flipflop_out[15:8])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generate a property for reading a byte
    property default_interface_CH1_CCUVAL1_sw_byte_read_2;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 46) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {24'b0,(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCUVAL1_CH1_flipflop_out[23:16])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generate a property for reading a byte
    property default_interface_CH1_CCUVAL1_sw_byte_read_3;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 47) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {24'b0,(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCUVAL1_CH1_flipflop_out[31:24])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Checks if tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 0, then the value of the bf_CCM2_CH1 remains the same
    property default_interface_bf_bf_CCM2_CH1_write_dummy;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_wr_en == 0) ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCM2_CH1_output ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCM2_CH1_output)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates hardware read properties for the bf_CCM2_CH1
    property default_interface_bf_bf_CCM2_CH1_hardware_read;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM2_CH1_out == tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCM2_CH1_output));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates software write properties for the bf_CCM2_CH1
    property default_interface_bf_bf_CCM2_CH1_sw_write;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_wr_en == 1) && 
	 1 && 
	 ( 1 && 
	 (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 48) ) | ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 48) ) | ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 48) )) ) ) 
	|->
	 (  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCM2_CH1_output ==  $past((tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_in[2:0])))  && 
	 ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_error) == 1'b0) ));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates property to check if the bf_CCM2_CH1 is reset to default value after the tc_soc_timer.HRESET_n_i is triggered
    property default_interface_CH1_CCUCTRL2_bf_CCM2_CH1_ff_reset;
    @(posedge tc_soc_timer.HCLK_i)
        ( $past(( ~tc_soc_timer.HRESET_n_i)) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCM2_CH1_output == 3'b0));
    endproperty
//---------------------------------------------------------------------------------------------

    //Checks if tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 0, then the value of the bf_CapIM2_CH1 remains the same
    property default_interface_bf_bf_CapIM2_CH1_write_dummy;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_wr_en == 0) ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CapIM2_CH1_output ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CapIM2_CH1_output)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates hardware read properties for the bf_CapIM2_CH1
    property default_interface_bf_bf_CapIM2_CH1_hardware_read;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM2_CH1_out == tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CapIM2_CH1_output));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates software write properties for the bf_CapIM2_CH1
    property default_interface_bf_bf_CapIM2_CH1_sw_write;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_wr_en == 1) && 
	 1 && 
	 ( 1 && 
	 (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 48) ) | ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 48) ) | ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 48) )) ) ) 
	|->
	 (  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CapIM2_CH1_output ==  $past((tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_in[5:3])))  && 
	 ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_error) == 1'b0) ));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates property to check if the bf_CapIM2_CH1 is reset to default value after the tc_soc_timer.HRESET_n_i is triggered
    property default_interface_CH1_CCUCTRL2_bf_CapIM2_CH1_ff_reset;
    @(posedge tc_soc_timer.HCLK_i)
        ( $past(( ~tc_soc_timer.HRESET_n_i)) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CapIM2_CH1_output == 3'b0));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates a property for reading a word
    property default_interface_CH1_CCUCTRL2_sw_word_read;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 48) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 0) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {26'b0,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CapIM2_CH1_output,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCM2_CH1_output}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates a property for reading a half word
    property default_interface_CH1_CCUCTRL2_sw_half_word_read_0;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 48) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 1) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {16'b0,({26'b0,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CapIM2_CH1_output,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCM2_CH1_output}[15:0])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates a property for reading a half word
    property default_interface_CH1_CCUCTRL2_sw_half_word_read_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 50) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 1) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {16'b0,({26'b0,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CapIM2_CH1_output,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCM2_CH1_output}[31:16])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generate a property for reading a byte
    property default_interface_CH1_CCUCTRL2_sw_byte_read_0;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 48) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {24'b0,({26'b0,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CapIM2_CH1_output,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCM2_CH1_output}[7:0])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generate a property for reading a byte
    property default_interface_CH1_CCUCTRL2_sw_byte_read_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 49) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {24'b0,({26'b0,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CapIM2_CH1_output,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCM2_CH1_output}[15:8])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generate a property for reading a byte
    property default_interface_CH1_CCUCTRL2_sw_byte_read_2;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 50) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {24'b0,({26'b0,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CapIM2_CH1_output,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCM2_CH1_output}[23:16])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generate a property for reading a byte
    property default_interface_CH1_CCUCTRL2_sw_byte_read_3;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 51) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {24'b0,({26'b0,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CapIM2_CH1_output,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCM2_CH1_output}[31:24])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates software write properties for the bf_CCUVAL2_CH1
    property default_interface_bf_bf_CCUVAL2_CH1_sw_write;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL2_CH1_peripheral_wr_en == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_wr_en == 1) ) && 
	 1 && 
	 ( 1 && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 52) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 0) ) ) 
	|->
	 ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCUVAL2_CH1_flipflop_in == (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_in[31:0])) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_error == 1'b0) ));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates software access error properties for the bf_CCUVAL2_CH1
    property default_interface_bf_bf_CCUVAL2_CH1_sw_access_error;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 && 
	 (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 1) && 
	 ((tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 52) | (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 54)) ) | ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) && 
	 ((tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 52) | (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 53) | (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 54) | (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 55)) )) ) && 
	 ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL2_CH1_peripheral_wr_en == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_wr_en == 1) ) ) 
	|->
	 ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_error == 1'b1)  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCUVAL2_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCUVAL2_CH1_flipflop_out))  ));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates a property for reading a word
    property default_interface_CH1_CCUVAL2_sw_word_read;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 52) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 0) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCUVAL2_CH1_flipflop_out));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates a property for reading a half word
    property default_interface_CH1_CCUVAL2_sw_half_word_read_0;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 52) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 1) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {16'b0,(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCUVAL2_CH1_flipflop_out[15:0])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates a property for reading a half word
    property default_interface_CH1_CCUVAL2_sw_half_word_read_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 54) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 1) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {16'b0,(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCUVAL2_CH1_flipflop_out[31:16])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generate a property for reading a byte
    property default_interface_CH1_CCUVAL2_sw_byte_read_0;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 52) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {24'b0,(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCUVAL2_CH1_flipflop_out[7:0])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generate a property for reading a byte
    property default_interface_CH1_CCUVAL2_sw_byte_read_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 53) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {24'b0,(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCUVAL2_CH1_flipflop_out[15:8])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generate a property for reading a byte
    property default_interface_CH1_CCUVAL2_sw_byte_read_2;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 54) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {24'b0,(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCUVAL2_CH1_flipflop_out[23:16])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generate a property for reading a byte
    property default_interface_CH1_CCUVAL2_sw_byte_read_3;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 55) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {24'b0,(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCUVAL2_CH1_flipflop_out[31:24])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Checks if tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 0, then the value of the bf_CCM3_CH1 remains the same
    property default_interface_bf_bf_CCM3_CH1_write_dummy;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_wr_en == 0) ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCM3_CH1_output ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCM3_CH1_output)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates hardware read properties for the bf_CCM3_CH1
    property default_interface_bf_bf_CCM3_CH1_hardware_read;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM3_CH1_out == tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCM3_CH1_output));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates software write properties for the bf_CCM3_CH1
    property default_interface_bf_bf_CCM3_CH1_sw_write;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_wr_en == 1) && 
	 1 && 
	 ( 1 && 
	 (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 56) ) | ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 56) ) | ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 56) )) ) ) 
	|->
	 (  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCM3_CH1_output ==  $past((tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_in[2:0])))  && 
	 ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_error) == 1'b0) ));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates property to check if the bf_CCM3_CH1 is reset to default value after the tc_soc_timer.HRESET_n_i is triggered
    property default_interface_CH1_CCUCTRL3_bf_CCM3_CH1_ff_reset;
    @(posedge tc_soc_timer.HCLK_i)
        ( $past(( ~tc_soc_timer.HRESET_n_i)) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCM3_CH1_output == 3'b0));
    endproperty
//---------------------------------------------------------------------------------------------

    //Checks if tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 0, then the value of the bf_CapIM3_CH1 remains the same
    property default_interface_bf_bf_CapIM3_CH1_write_dummy;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_wr_en == 0) ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CapIM3_CH1_output ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CapIM3_CH1_output)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates hardware read properties for the bf_CapIM3_CH1
    property default_interface_bf_bf_CapIM3_CH1_hardware_read;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM3_CH1_out == tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CapIM3_CH1_output));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates software write properties for the bf_CapIM3_CH1
    property default_interface_bf_bf_CapIM3_CH1_sw_write;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_wr_en == 1) && 
	 1 && 
	 ( 1 && 
	 (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 56) ) | ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 56) ) | ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 56) )) ) ) 
	|->
	 (  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CapIM3_CH1_output ==  $past((tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_in[5:3])))  && 
	 ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_error) == 1'b0) ));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates property to check if the bf_CapIM3_CH1 is reset to default value after the tc_soc_timer.HRESET_n_i is triggered
    property default_interface_CH1_CCUCTRL3_bf_CapIM3_CH1_ff_reset;
    @(posedge tc_soc_timer.HCLK_i)
        ( $past(( ~tc_soc_timer.HRESET_n_i)) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CapIM3_CH1_output == 3'b0));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates a property for reading a word
    property default_interface_CH1_CCUCTRL3_sw_word_read;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 56) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 0) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {26'b0,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CapIM3_CH1_output,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCM3_CH1_output}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates a property for reading a half word
    property default_interface_CH1_CCUCTRL3_sw_half_word_read_0;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 56) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 1) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {16'b0,({26'b0,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CapIM3_CH1_output,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCM3_CH1_output}[15:0])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates a property for reading a half word
    property default_interface_CH1_CCUCTRL3_sw_half_word_read_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 58) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 1) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {16'b0,({26'b0,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CapIM3_CH1_output,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCM3_CH1_output}[31:16])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generate a property for reading a byte
    property default_interface_CH1_CCUCTRL3_sw_byte_read_0;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 56) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {24'b0,({26'b0,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CapIM3_CH1_output,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCM3_CH1_output}[7:0])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generate a property for reading a byte
    property default_interface_CH1_CCUCTRL3_sw_byte_read_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 57) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {24'b0,({26'b0,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CapIM3_CH1_output,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCM3_CH1_output}[15:8])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generate a property for reading a byte
    property default_interface_CH1_CCUCTRL3_sw_byte_read_2;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 58) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {24'b0,({26'b0,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CapIM3_CH1_output,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCM3_CH1_output}[23:16])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generate a property for reading a byte
    property default_interface_CH1_CCUCTRL3_sw_byte_read_3;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 59) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {24'b0,({26'b0,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CapIM3_CH1_output,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCM3_CH1_output}[31:24])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates software write properties for the bf_CCUVAL3_CH1
    property default_interface_bf_bf_CCUVAL3_CH1_sw_write;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL3_CH1_peripheral_wr_en == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_wr_en == 1) ) && 
	 1 && 
	 ( 1 && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 60) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 0) ) ) 
	|->
	 ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCUVAL3_CH1_flipflop_in == (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_in[31:0])) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_error == 1'b0) ));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates software access error properties for the bf_CCUVAL3_CH1
    property default_interface_bf_bf_CCUVAL3_CH1_sw_access_error;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 && 
	 (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 1) && 
	 ((tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 60) | (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 62)) ) | ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) && 
	 ((tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 60) | (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 61) | (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 62) | (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 63)) )) ) && 
	 ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL3_CH1_peripheral_wr_en == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_wr_en == 1) ) ) 
	|->
	 ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_error == 1'b1)  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCUVAL3_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCUVAL3_CH1_flipflop_out))  ));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates a property for reading a word
    property default_interface_CH1_CCUVAL3_sw_word_read;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 60) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 0) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCUVAL3_CH1_flipflop_out));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates a property for reading a half word
    property default_interface_CH1_CCUVAL3_sw_half_word_read_0;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 60) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 1) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {16'b0,(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCUVAL3_CH1_flipflop_out[15:0])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates a property for reading a half word
    property default_interface_CH1_CCUVAL3_sw_half_word_read_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 62) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 1) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {16'b0,(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCUVAL3_CH1_flipflop_out[31:16])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generate a property for reading a byte
    property default_interface_CH1_CCUVAL3_sw_byte_read_0;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 60) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {24'b0,(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCUVAL3_CH1_flipflop_out[7:0])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generate a property for reading a byte
    property default_interface_CH1_CCUVAL3_sw_byte_read_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 61) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {24'b0,(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCUVAL3_CH1_flipflop_out[15:8])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generate a property for reading a byte
    property default_interface_CH1_CCUVAL3_sw_byte_read_2;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 62) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {24'b0,(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCUVAL3_CH1_flipflop_out[23:16])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generate a property for reading a byte
    property default_interface_CH1_CCUVAL3_sw_byte_read_3;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 63) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {24'b0,(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCUVAL3_CH1_flipflop_out[31:24])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Checks if tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 0, then the value of the bf_CCM4_CH1 remains the same
    property default_interface_bf_bf_CCM4_CH1_write_dummy;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_wr_en == 0) ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCM4_CH1_output ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCM4_CH1_output)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates hardware read properties for the bf_CCM4_CH1
    property default_interface_bf_bf_CCM4_CH1_hardware_read;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM4_CH1_out == tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCM4_CH1_output));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates software write properties for the bf_CCM4_CH1
    property default_interface_bf_bf_CCM4_CH1_sw_write;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_wr_en == 1) && 
	 1 && 
	 ( 1 && 
	 (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 64) ) | ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 64) ) | ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 64) )) ) ) 
	|->
	 (  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCM4_CH1_output ==  $past((tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_in[2:0])))  && 
	 ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_error) == 1'b0) ));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates property to check if the bf_CCM4_CH1 is reset to default value after the tc_soc_timer.HRESET_n_i is triggered
    property default_interface_CH1_CCUCTRL4_bf_CCM4_CH1_ff_reset;
    @(posedge tc_soc_timer.HCLK_i)
        ( $past(( ~tc_soc_timer.HRESET_n_i)) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCM4_CH1_output == 3'b0));
    endproperty
//---------------------------------------------------------------------------------------------

    //Checks if tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 0, then the value of the bf_CapIM4_CH1 remains the same
    property default_interface_bf_bf_CapIM4_CH1_write_dummy;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_wr_en == 0) ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CapIM4_CH1_output ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CapIM4_CH1_output)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates hardware read properties for the bf_CapIM4_CH1
    property default_interface_bf_bf_CapIM4_CH1_hardware_read;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM4_CH1_out == tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CapIM4_CH1_output));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates software write properties for the bf_CapIM4_CH1
    property default_interface_bf_bf_CapIM4_CH1_sw_write;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_wr_en == 1) && 
	 1 && 
	 ( 1 && 
	 (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 64) ) | ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 64) ) | ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 64) )) ) ) 
	|->
	 (  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CapIM4_CH1_output ==  $past((tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_in[5:3])))  && 
	 ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_error) == 1'b0) ));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates property to check if the bf_CapIM4_CH1 is reset to default value after the tc_soc_timer.HRESET_n_i is triggered
    property default_interface_CH1_CCUCTRL4_bf_CapIM4_CH1_ff_reset;
    @(posedge tc_soc_timer.HCLK_i)
        ( $past(( ~tc_soc_timer.HRESET_n_i)) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CapIM4_CH1_output == 3'b0));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates a property for reading a word
    property default_interface_CH1_CCUCTRL4_sw_word_read;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 64) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 0) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {26'b0,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CapIM4_CH1_output,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCM4_CH1_output}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates a property for reading a half word
    property default_interface_CH1_CCUCTRL4_sw_half_word_read_0;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 64) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 1) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {16'b0,({26'b0,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CapIM4_CH1_output,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCM4_CH1_output}[15:0])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates a property for reading a half word
    property default_interface_CH1_CCUCTRL4_sw_half_word_read_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 66) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 1) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {16'b0,({26'b0,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CapIM4_CH1_output,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCM4_CH1_output}[31:16])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generate a property for reading a byte
    property default_interface_CH1_CCUCTRL4_sw_byte_read_0;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 64) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {24'b0,({26'b0,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CapIM4_CH1_output,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCM4_CH1_output}[7:0])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generate a property for reading a byte
    property default_interface_CH1_CCUCTRL4_sw_byte_read_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 65) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {24'b0,({26'b0,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CapIM4_CH1_output,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCM4_CH1_output}[15:8])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generate a property for reading a byte
    property default_interface_CH1_CCUCTRL4_sw_byte_read_2;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 66) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {24'b0,({26'b0,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CapIM4_CH1_output,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCM4_CH1_output}[23:16])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generate a property for reading a byte
    property default_interface_CH1_CCUCTRL4_sw_byte_read_3;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 67) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {24'b0,({26'b0,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CapIM4_CH1_output,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCM4_CH1_output}[31:24])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates software write properties for the bf_CCUVAL4_CH1
    property default_interface_bf_bf_CCUVAL4_CH1_sw_write;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL4_CH1_peripheral_wr_en == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_wr_en == 1) ) && 
	 1 && 
	 ( 1 && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 68) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 0) ) ) 
	|->
	 ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCUVAL4_CH1_flipflop_in == (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_in[31:0])) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_error == 1'b0) ));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates software access error properties for the bf_CCUVAL4_CH1
    property default_interface_bf_bf_CCUVAL4_CH1_sw_access_error;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 && 
	 (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 1) && 
	 ((tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 68) | (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 70)) ) | ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) && 
	 ((tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 68) | (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 69) | (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 70) | (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 71)) )) ) && 
	 ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL4_CH1_peripheral_wr_en == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_wr_en == 1) ) ) 
	|->
	 ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_error == 1'b1)  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCUVAL4_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCUVAL4_CH1_flipflop_out))  ));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates a property for reading a word
    property default_interface_CH1_CCUVAL4_sw_word_read;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 68) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 0) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCUVAL4_CH1_flipflop_out));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates a property for reading a half word
    property default_interface_CH1_CCUVAL4_sw_half_word_read_0;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 68) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 1) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {16'b0,(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCUVAL4_CH1_flipflop_out[15:0])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates a property for reading a half word
    property default_interface_CH1_CCUVAL4_sw_half_word_read_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 70) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 1) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {16'b0,(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCUVAL4_CH1_flipflop_out[31:16])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generate a property for reading a byte
    property default_interface_CH1_CCUVAL4_sw_byte_read_0;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 68) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {24'b0,(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCUVAL4_CH1_flipflop_out[7:0])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generate a property for reading a byte
    property default_interface_CH1_CCUVAL4_sw_byte_read_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 69) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {24'b0,(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCUVAL4_CH1_flipflop_out[15:8])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generate a property for reading a byte
    property default_interface_CH1_CCUVAL4_sw_byte_read_2;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 70) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {24'b0,(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCUVAL4_CH1_flipflop_out[23:16])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generate a property for reading a byte
    property default_interface_CH1_CCUVAL4_sw_byte_read_3;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 71) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {24'b0,(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCUVAL4_CH1_flipflop_out[31:24])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Checks if tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 0, then the value of the bf_CCM5_CH1 remains the same
    property default_interface_bf_bf_CCM5_CH1_write_dummy;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_wr_en == 0) ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCM5_CH1_output ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCM5_CH1_output)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates hardware read properties for the bf_CCM5_CH1
    property default_interface_bf_bf_CCM5_CH1_hardware_read;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM5_CH1_out == tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCM5_CH1_output));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates software write properties for the bf_CCM5_CH1
    property default_interface_bf_bf_CCM5_CH1_sw_write;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_wr_en == 1) && 
	 1 && 
	 ( 1 && 
	 (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 72) ) | ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 72) ) | ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 72) )) ) ) 
	|->
	 (  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCM5_CH1_output ==  $past((tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_in[2:0])))  && 
	 ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_error) == 1'b0) ));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates property to check if the bf_CCM5_CH1 is reset to default value after the tc_soc_timer.HRESET_n_i is triggered
    property default_interface_CH1_CCUCTRL5_bf_CCM5_CH1_ff_reset;
    @(posedge tc_soc_timer.HCLK_i)
        ( $past(( ~tc_soc_timer.HRESET_n_i)) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCM5_CH1_output == 3'b0));
    endproperty
//---------------------------------------------------------------------------------------------

    //Checks if tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 0, then the value of the bf_CapIM5_CH1 remains the same
    property default_interface_bf_bf_CapIM5_CH1_write_dummy;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_wr_en == 0) ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CapIM5_CH1_output ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CapIM5_CH1_output)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates hardware read properties for the bf_CapIM5_CH1
    property default_interface_bf_bf_CapIM5_CH1_hardware_read;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (1 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM5_CH1_out == tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CapIM5_CH1_output));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates software write properties for the bf_CapIM5_CH1
    property default_interface_bf_bf_CapIM5_CH1_sw_write;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_wr_en == 1) && 
	 1 && 
	 ( 1 && 
	 (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 72) ) | ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 72) ) | ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 72) )) ) ) 
	|->
	 (  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CapIM5_CH1_output ==  $past((tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_in[5:3])))  && 
	 ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_error) == 1'b0) ));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates property to check if the bf_CapIM5_CH1 is reset to default value after the tc_soc_timer.HRESET_n_i is triggered
    property default_interface_CH1_CCUCTRL5_bf_CapIM5_CH1_ff_reset;
    @(posedge tc_soc_timer.HCLK_i)
        ( $past(( ~tc_soc_timer.HRESET_n_i)) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CapIM5_CH1_output == 3'b0));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates a property for reading a word
    property default_interface_CH1_CCUCTRL5_sw_word_read;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 72) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 0) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {26'b0,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CapIM5_CH1_output,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCM5_CH1_output}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates a property for reading a half word
    property default_interface_CH1_CCUCTRL5_sw_half_word_read_0;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 72) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 1) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {16'b0,({26'b0,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CapIM5_CH1_output,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCM5_CH1_output}[15:0])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates a property for reading a half word
    property default_interface_CH1_CCUCTRL5_sw_half_word_read_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 74) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 1) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {16'b0,({26'b0,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CapIM5_CH1_output,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCM5_CH1_output}[31:16])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generate a property for reading a byte
    property default_interface_CH1_CCUCTRL5_sw_byte_read_0;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 72) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {24'b0,({26'b0,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CapIM5_CH1_output,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCM5_CH1_output}[7:0])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generate a property for reading a byte
    property default_interface_CH1_CCUCTRL5_sw_byte_read_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 73) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {24'b0,({26'b0,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CapIM5_CH1_output,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCM5_CH1_output}[15:8])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generate a property for reading a byte
    property default_interface_CH1_CCUCTRL5_sw_byte_read_2;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 74) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {24'b0,({26'b0,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CapIM5_CH1_output,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCM5_CH1_output}[23:16])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generate a property for reading a byte
    property default_interface_CH1_CCUCTRL5_sw_byte_read_3;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 75) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {24'b0,({26'b0,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CapIM5_CH1_output,tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCM5_CH1_output}[31:24])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates software write properties for the bf_CCUVAL5_CH1
    property default_interface_bf_bf_CCUVAL5_CH1_sw_write;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL5_CH1_peripheral_wr_en == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_wr_en == 1) ) && 
	 1 && 
	 ( 1 && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 76) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 0) ) ) 
	|->
	 ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCUVAL5_CH1_flipflop_in == (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_in[31:0])) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_error == 1'b0) ));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates software access error properties for the bf_CCUVAL5_CH1
    property default_interface_bf_bf_CCUVAL5_CH1_sw_access_error;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 && 
	 (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 1) && 
	 ((tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 76) | (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 78)) ) | ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) && 
	 ((tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 76) | (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 77) | (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 78) | (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 79)) )) ) && 
	 ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL5_CH1_peripheral_wr_en == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_wr_en == 1) ) ) 
	|->
	 ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_error == 1'b1)  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCUVAL5_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCUVAL5_CH1_flipflop_out))  ));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates a property for reading a word
    property default_interface_CH1_CCUVAL5_sw_word_read;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 76) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 0) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCUVAL5_CH1_flipflop_out));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates a property for reading a half word
    property default_interface_CH1_CCUVAL5_sw_half_word_read_0;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 76) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 1) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {16'b0,(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCUVAL5_CH1_flipflop_out[15:0])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generates a property for reading a half word
    property default_interface_CH1_CCUVAL5_sw_half_word_read_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 78) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 1) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {16'b0,(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCUVAL5_CH1_flipflop_out[31:16])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generate a property for reading a byte
    property default_interface_CH1_CCUVAL5_sw_byte_read_0;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 76) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {24'b0,(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCUVAL5_CH1_flipflop_out[7:0])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generate a property for reading a byte
    property default_interface_CH1_CCUVAL5_sw_byte_read_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 77) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {24'b0,(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCUVAL5_CH1_flipflop_out[15:8])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generate a property for reading a byte
    property default_interface_CH1_CCUVAL5_sw_byte_read_2;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 78) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {24'b0,(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCUVAL5_CH1_flipflop_out[23:16])}));
    endproperty
//---------------------------------------------------------------------------------------------

    //Generate a property for reading a byte
    property default_interface_CH1_CCUVAL5_sw_byte_read_3;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_rd_en == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 79) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_AccessSize == 2) ) 
	|->
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_data_out == {24'b0,(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.comp_Top_CSC_default_interface.default_interface_BF_bf_CCUVAL5_CH1_flipflop_out[31:24])}));
    endproperty
//---------------------------------------------------------------------------------------------

    default_interface_bf_bf_TimEn_CH0_write_dummy_assert: assert property(default_interface_bf_bf_TimEn_CH0_write_dummy);
    default_interface_bf_bf_TimEn_CH0_hardware_read_assert: assert property(default_interface_bf_bf_TimEn_CH0_hardware_read);
    default_interface_bf_bf_TimEn_CH0_sw_write_assert: assert property(default_interface_bf_bf_TimEn_CH0_sw_write);
    default_interface_CH0_CTRLSTAT_bf_TimEn_CH0_ff_reset_assert: assert property(default_interface_CH0_CTRLSTAT_bf_TimEn_CH0_ff_reset);
    default_interface_bf_bf_ResIM_CH0_write_dummy_assert: assert property(default_interface_bf_bf_ResIM_CH0_write_dummy);
    default_interface_bf_bf_ResIM_CH0_hardware_read_assert: assert property(default_interface_bf_bf_ResIM_CH0_hardware_read);
    default_interface_bf_bf_ResIM_CH0_sw_write_assert: assert property(default_interface_bf_bf_ResIM_CH0_sw_write);
    default_interface_CH0_CTRLSTAT_bf_ResIM_CH0_ff_reset_assert: assert property(default_interface_CH0_CTRLSTAT_bf_ResIM_CH0_ff_reset);
    default_interface_bf_bf_CntIM_CH0_write_dummy_assert: assert property(default_interface_bf_bf_CntIM_CH0_write_dummy);
    default_interface_bf_bf_CntIM_CH0_hardware_read_assert: assert property(default_interface_bf_bf_CntIM_CH0_hardware_read);
    default_interface_bf_bf_CntIM_CH0_sw_write_assert: assert property(default_interface_bf_bf_CntIM_CH0_sw_write);
    default_interface_CH0_CTRLSTAT_bf_CntIM_CH0_ff_reset_assert: assert property(default_interface_CH0_CTRLSTAT_bf_CntIM_CH0_ff_reset);
    default_interface_bf_bf_OvfIntEn_CH0_write_dummy_assert: assert property(default_interface_bf_bf_OvfIntEn_CH0_write_dummy);
    default_interface_bf_bf_OvfIntEn_CH0_hardware_read_assert: assert property(default_interface_bf_bf_OvfIntEn_CH0_hardware_read);
    default_interface_bf_bf_OvfIntEn_CH0_sw_write_assert: assert property(default_interface_bf_bf_OvfIntEn_CH0_sw_write);
    default_interface_CH0_CTRLSTAT_bf_OvfIntEn_CH0_ff_reset_assert: assert property(default_interface_CH0_CTRLSTAT_bf_OvfIntEn_CH0_ff_reset);
    default_interface_CH0_CTRLSTAT_sw_word_read_assert: assert property(default_interface_CH0_CTRLSTAT_sw_word_read);
    default_interface_CH0_CTRLSTAT_sw_half_word_read_0_assert: assert property(default_interface_CH0_CTRLSTAT_sw_half_word_read_0);
    default_interface_CH0_CTRLSTAT_sw_half_word_read_1_assert: assert property(default_interface_CH0_CTRLSTAT_sw_half_word_read_1);
    default_interface_CH0_CTRLSTAT_sw_byte_read_0_assert: assert property(default_interface_CH0_CTRLSTAT_sw_byte_read_0);
    default_interface_CH0_CTRLSTAT_sw_byte_read_1_assert: assert property(default_interface_CH0_CTRLSTAT_sw_byte_read_1);
    default_interface_CH0_CTRLSTAT_sw_byte_read_2_assert: assert property(default_interface_CH0_CTRLSTAT_sw_byte_read_2);
    default_interface_CH0_CTRLSTAT_sw_byte_read_3_assert: assert property(default_interface_CH0_CTRLSTAT_sw_byte_read_3);
    default_interface_bf_bf_ACTVAL_CH0_sw_write_assert: assert property(default_interface_bf_bf_ACTVAL_CH0_sw_write);
    default_interface_bf_bf_ACTVAL_CH0_sw_access_error_assert: assert property(default_interface_bf_bf_ACTVAL_CH0_sw_access_error);
    default_interface_CH0_ACTVAL_sw_word_read_assert: assert property(default_interface_CH0_ACTVAL_sw_word_read);
    default_interface_CH0_ACTVAL_sw_half_word_read_0_assert: assert property(default_interface_CH0_ACTVAL_sw_half_word_read_0);
    default_interface_CH0_ACTVAL_sw_half_word_read_1_assert: assert property(default_interface_CH0_ACTVAL_sw_half_word_read_1);
    default_interface_CH0_ACTVAL_sw_byte_read_0_assert: assert property(default_interface_CH0_ACTVAL_sw_byte_read_0);
    default_interface_CH0_ACTVAL_sw_byte_read_1_assert: assert property(default_interface_CH0_ACTVAL_sw_byte_read_1);
    default_interface_CH0_ACTVAL_sw_byte_read_2_assert: assert property(default_interface_CH0_ACTVAL_sw_byte_read_2);
    default_interface_CH0_ACTVAL_sw_byte_read_3_assert: assert property(default_interface_CH0_ACTVAL_sw_byte_read_3);
    default_interface_bf_bf_MAXVAL_CH0_sw_write_assert: assert property(default_interface_bf_bf_MAXVAL_CH0_sw_write);
    default_interface_bf_bf_MAXVAL_CH0_sw_access_error_assert: assert property(default_interface_bf_bf_MAXVAL_CH0_sw_access_error);
    default_interface_CH0_MAXVAL_sw_word_read_assert: assert property(default_interface_CH0_MAXVAL_sw_word_read);
    default_interface_CH0_MAXVAL_sw_half_word_read_0_assert: assert property(default_interface_CH0_MAXVAL_sw_half_word_read_0);
    default_interface_CH0_MAXVAL_sw_half_word_read_1_assert: assert property(default_interface_CH0_MAXVAL_sw_half_word_read_1);
    default_interface_CH0_MAXVAL_sw_byte_read_0_assert: assert property(default_interface_CH0_MAXVAL_sw_byte_read_0);
    default_interface_CH0_MAXVAL_sw_byte_read_1_assert: assert property(default_interface_CH0_MAXVAL_sw_byte_read_1);
    default_interface_CH0_MAXVAL_sw_byte_read_2_assert: assert property(default_interface_CH0_MAXVAL_sw_byte_read_2);
    default_interface_CH0_MAXVAL_sw_byte_read_3_assert: assert property(default_interface_CH0_MAXVAL_sw_byte_read_3);
    default_interface_bf_bf_CCM0_CH0_write_dummy_assert: assert property(default_interface_bf_bf_CCM0_CH0_write_dummy);
    default_interface_bf_bf_CCM0_CH0_hardware_read_assert: assert property(default_interface_bf_bf_CCM0_CH0_hardware_read);
    default_interface_bf_bf_CCM0_CH0_sw_write_assert: assert property(default_interface_bf_bf_CCM0_CH0_sw_write);
    default_interface_CH0_CCUCTRL0_bf_CCM0_CH0_ff_reset_assert: assert property(default_interface_CH0_CCUCTRL0_bf_CCM0_CH0_ff_reset);
    default_interface_bf_bf_CapIM0_CH0_write_dummy_assert: assert property(default_interface_bf_bf_CapIM0_CH0_write_dummy);
    default_interface_bf_bf_CapIM0_CH0_hardware_read_assert: assert property(default_interface_bf_bf_CapIM0_CH0_hardware_read);
    default_interface_bf_bf_CapIM0_CH0_sw_write_assert: assert property(default_interface_bf_bf_CapIM0_CH0_sw_write);
    default_interface_CH0_CCUCTRL0_bf_CapIM0_CH0_ff_reset_assert: assert property(default_interface_CH0_CCUCTRL0_bf_CapIM0_CH0_ff_reset);
    default_interface_CH0_CCUCTRL0_sw_word_read_assert: assert property(default_interface_CH0_CCUCTRL0_sw_word_read);
    default_interface_CH0_CCUCTRL0_sw_half_word_read_0_assert: assert property(default_interface_CH0_CCUCTRL0_sw_half_word_read_0);
    default_interface_CH0_CCUCTRL0_sw_half_word_read_1_assert: assert property(default_interface_CH0_CCUCTRL0_sw_half_word_read_1);
    default_interface_CH0_CCUCTRL0_sw_byte_read_0_assert: assert property(default_interface_CH0_CCUCTRL0_sw_byte_read_0);
    default_interface_CH0_CCUCTRL0_sw_byte_read_1_assert: assert property(default_interface_CH0_CCUCTRL0_sw_byte_read_1);
    default_interface_CH0_CCUCTRL0_sw_byte_read_2_assert: assert property(default_interface_CH0_CCUCTRL0_sw_byte_read_2);
    default_interface_CH0_CCUCTRL0_sw_byte_read_3_assert: assert property(default_interface_CH0_CCUCTRL0_sw_byte_read_3);
    default_interface_bf_bf_CCUVAL0_CH0_sw_write_assert: assert property(default_interface_bf_bf_CCUVAL0_CH0_sw_write);
    default_interface_bf_bf_CCUVAL0_CH0_sw_access_error_assert: assert property(default_interface_bf_bf_CCUVAL0_CH0_sw_access_error);
    default_interface_CH0_CCUVAL0_sw_word_read_assert: assert property(default_interface_CH0_CCUVAL0_sw_word_read);
    default_interface_CH0_CCUVAL0_sw_half_word_read_0_assert: assert property(default_interface_CH0_CCUVAL0_sw_half_word_read_0);
    default_interface_CH0_CCUVAL0_sw_half_word_read_1_assert: assert property(default_interface_CH0_CCUVAL0_sw_half_word_read_1);
    default_interface_CH0_CCUVAL0_sw_byte_read_0_assert: assert property(default_interface_CH0_CCUVAL0_sw_byte_read_0);
    default_interface_CH0_CCUVAL0_sw_byte_read_1_assert: assert property(default_interface_CH0_CCUVAL0_sw_byte_read_1);
    default_interface_CH0_CCUVAL0_sw_byte_read_2_assert: assert property(default_interface_CH0_CCUVAL0_sw_byte_read_2);
    default_interface_CH0_CCUVAL0_sw_byte_read_3_assert: assert property(default_interface_CH0_CCUVAL0_sw_byte_read_3);
    default_interface_bf_bf_TimEn_CH1_write_dummy_assert: assert property(default_interface_bf_bf_TimEn_CH1_write_dummy);
    default_interface_bf_bf_TimEn_CH1_hardware_read_assert: assert property(default_interface_bf_bf_TimEn_CH1_hardware_read);
    default_interface_bf_bf_TimEn_CH1_sw_write_assert: assert property(default_interface_bf_bf_TimEn_CH1_sw_write);
    default_interface_CH1_CTRLSTAT_bf_TimEn_CH1_ff_reset_assert: assert property(default_interface_CH1_CTRLSTAT_bf_TimEn_CH1_ff_reset);
    default_interface_bf_bf_ResIM_CH1_write_dummy_assert: assert property(default_interface_bf_bf_ResIM_CH1_write_dummy);
    default_interface_bf_bf_ResIM_CH1_hardware_read_assert: assert property(default_interface_bf_bf_ResIM_CH1_hardware_read);
    default_interface_bf_bf_ResIM_CH1_sw_write_assert: assert property(default_interface_bf_bf_ResIM_CH1_sw_write);
    default_interface_CH1_CTRLSTAT_bf_ResIM_CH1_ff_reset_assert: assert property(default_interface_CH1_CTRLSTAT_bf_ResIM_CH1_ff_reset);
    default_interface_bf_bf_CntIM_CH1_write_dummy_assert: assert property(default_interface_bf_bf_CntIM_CH1_write_dummy);
    default_interface_bf_bf_CntIM_CH1_hardware_read_assert: assert property(default_interface_bf_bf_CntIM_CH1_hardware_read);
    default_interface_bf_bf_CntIM_CH1_sw_write_assert: assert property(default_interface_bf_bf_CntIM_CH1_sw_write);
    default_interface_CH1_CTRLSTAT_bf_CntIM_CH1_ff_reset_assert: assert property(default_interface_CH1_CTRLSTAT_bf_CntIM_CH1_ff_reset);
    default_interface_bf_bf_OvfIntEn_CH1_write_dummy_assert: assert property(default_interface_bf_bf_OvfIntEn_CH1_write_dummy);
    default_interface_bf_bf_OvfIntEn_CH1_hardware_read_assert: assert property(default_interface_bf_bf_OvfIntEn_CH1_hardware_read);
    default_interface_bf_bf_OvfIntEn_CH1_sw_write_assert: assert property(default_interface_bf_bf_OvfIntEn_CH1_sw_write);
    default_interface_CH1_CTRLSTAT_bf_OvfIntEn_CH1_ff_reset_assert: assert property(default_interface_CH1_CTRLSTAT_bf_OvfIntEn_CH1_ff_reset);
    default_interface_CH1_CTRLSTAT_sw_word_read_assert: assert property(default_interface_CH1_CTRLSTAT_sw_word_read);
    default_interface_CH1_CTRLSTAT_sw_half_word_read_0_assert: assert property(default_interface_CH1_CTRLSTAT_sw_half_word_read_0);
    default_interface_CH1_CTRLSTAT_sw_half_word_read_1_assert: assert property(default_interface_CH1_CTRLSTAT_sw_half_word_read_1);
    default_interface_CH1_CTRLSTAT_sw_byte_read_0_assert: assert property(default_interface_CH1_CTRLSTAT_sw_byte_read_0);
    default_interface_CH1_CTRLSTAT_sw_byte_read_1_assert: assert property(default_interface_CH1_CTRLSTAT_sw_byte_read_1);
    default_interface_CH1_CTRLSTAT_sw_byte_read_2_assert: assert property(default_interface_CH1_CTRLSTAT_sw_byte_read_2);
    default_interface_CH1_CTRLSTAT_sw_byte_read_3_assert: assert property(default_interface_CH1_CTRLSTAT_sw_byte_read_3);
    default_interface_bf_bf_ACTVAL_CH1_sw_write_assert: assert property(default_interface_bf_bf_ACTVAL_CH1_sw_write);
    default_interface_bf_bf_ACTVAL_CH1_sw_access_error_assert: assert property(default_interface_bf_bf_ACTVAL_CH1_sw_access_error);
    default_interface_CH1_ACTVAL_sw_word_read_assert: assert property(default_interface_CH1_ACTVAL_sw_word_read);
    default_interface_CH1_ACTVAL_sw_half_word_read_0_assert: assert property(default_interface_CH1_ACTVAL_sw_half_word_read_0);
    default_interface_CH1_ACTVAL_sw_half_word_read_1_assert: assert property(default_interface_CH1_ACTVAL_sw_half_word_read_1);
    default_interface_CH1_ACTVAL_sw_byte_read_0_assert: assert property(default_interface_CH1_ACTVAL_sw_byte_read_0);
    default_interface_CH1_ACTVAL_sw_byte_read_1_assert: assert property(default_interface_CH1_ACTVAL_sw_byte_read_1);
    default_interface_CH1_ACTVAL_sw_byte_read_2_assert: assert property(default_interface_CH1_ACTVAL_sw_byte_read_2);
    default_interface_CH1_ACTVAL_sw_byte_read_3_assert: assert property(default_interface_CH1_ACTVAL_sw_byte_read_3);
    default_interface_bf_bf_MAXVAL_CH1_sw_write_assert: assert property(default_interface_bf_bf_MAXVAL_CH1_sw_write);
    default_interface_bf_bf_MAXVAL_CH1_sw_access_error_assert: assert property(default_interface_bf_bf_MAXVAL_CH1_sw_access_error);
    default_interface_CH1_MAXVAL_sw_word_read_assert: assert property(default_interface_CH1_MAXVAL_sw_word_read);
    default_interface_CH1_MAXVAL_sw_half_word_read_0_assert: assert property(default_interface_CH1_MAXVAL_sw_half_word_read_0);
    default_interface_CH1_MAXVAL_sw_half_word_read_1_assert: assert property(default_interface_CH1_MAXVAL_sw_half_word_read_1);
    default_interface_CH1_MAXVAL_sw_byte_read_0_assert: assert property(default_interface_CH1_MAXVAL_sw_byte_read_0);
    default_interface_CH1_MAXVAL_sw_byte_read_1_assert: assert property(default_interface_CH1_MAXVAL_sw_byte_read_1);
    default_interface_CH1_MAXVAL_sw_byte_read_2_assert: assert property(default_interface_CH1_MAXVAL_sw_byte_read_2);
    default_interface_CH1_MAXVAL_sw_byte_read_3_assert: assert property(default_interface_CH1_MAXVAL_sw_byte_read_3);
    default_interface_bf_bf_CCM0_CH1_write_dummy_assert: assert property(default_interface_bf_bf_CCM0_CH1_write_dummy);
    default_interface_bf_bf_CCM0_CH1_hardware_read_assert: assert property(default_interface_bf_bf_CCM0_CH1_hardware_read);
    default_interface_bf_bf_CCM0_CH1_sw_write_assert: assert property(default_interface_bf_bf_CCM0_CH1_sw_write);
    default_interface_CH1_CCUCTRL0_bf_CCM0_CH1_ff_reset_assert: assert property(default_interface_CH1_CCUCTRL0_bf_CCM0_CH1_ff_reset);
    default_interface_bf_bf_CapIM0_CH1_write_dummy_assert: assert property(default_interface_bf_bf_CapIM0_CH1_write_dummy);
    default_interface_bf_bf_CapIM0_CH1_hardware_read_assert: assert property(default_interface_bf_bf_CapIM0_CH1_hardware_read);
    default_interface_bf_bf_CapIM0_CH1_sw_write_assert: assert property(default_interface_bf_bf_CapIM0_CH1_sw_write);
    default_interface_CH1_CCUCTRL0_bf_CapIM0_CH1_ff_reset_assert: assert property(default_interface_CH1_CCUCTRL0_bf_CapIM0_CH1_ff_reset);
    default_interface_CH1_CCUCTRL0_sw_word_read_assert: assert property(default_interface_CH1_CCUCTRL0_sw_word_read);
    default_interface_CH1_CCUCTRL0_sw_half_word_read_0_assert: assert property(default_interface_CH1_CCUCTRL0_sw_half_word_read_0);
    default_interface_CH1_CCUCTRL0_sw_half_word_read_1_assert: assert property(default_interface_CH1_CCUCTRL0_sw_half_word_read_1);
    default_interface_CH1_CCUCTRL0_sw_byte_read_0_assert: assert property(default_interface_CH1_CCUCTRL0_sw_byte_read_0);
    default_interface_CH1_CCUCTRL0_sw_byte_read_1_assert: assert property(default_interface_CH1_CCUCTRL0_sw_byte_read_1);
    default_interface_CH1_CCUCTRL0_sw_byte_read_2_assert: assert property(default_interface_CH1_CCUCTRL0_sw_byte_read_2);
    default_interface_CH1_CCUCTRL0_sw_byte_read_3_assert: assert property(default_interface_CH1_CCUCTRL0_sw_byte_read_3);
    default_interface_bf_bf_CCUVAL0_CH1_sw_write_assert: assert property(default_interface_bf_bf_CCUVAL0_CH1_sw_write);
    default_interface_bf_bf_CCUVAL0_CH1_sw_access_error_assert: assert property(default_interface_bf_bf_CCUVAL0_CH1_sw_access_error);
    default_interface_CH1_CCUVAL0_sw_word_read_assert: assert property(default_interface_CH1_CCUVAL0_sw_word_read);
    default_interface_CH1_CCUVAL0_sw_half_word_read_0_assert: assert property(default_interface_CH1_CCUVAL0_sw_half_word_read_0);
    default_interface_CH1_CCUVAL0_sw_half_word_read_1_assert: assert property(default_interface_CH1_CCUVAL0_sw_half_word_read_1);
    default_interface_CH1_CCUVAL0_sw_byte_read_0_assert: assert property(default_interface_CH1_CCUVAL0_sw_byte_read_0);
    default_interface_CH1_CCUVAL0_sw_byte_read_1_assert: assert property(default_interface_CH1_CCUVAL0_sw_byte_read_1);
    default_interface_CH1_CCUVAL0_sw_byte_read_2_assert: assert property(default_interface_CH1_CCUVAL0_sw_byte_read_2);
    default_interface_CH1_CCUVAL0_sw_byte_read_3_assert: assert property(default_interface_CH1_CCUVAL0_sw_byte_read_3);
    default_interface_bf_bf_CCM1_CH1_write_dummy_assert: assert property(default_interface_bf_bf_CCM1_CH1_write_dummy);
    default_interface_bf_bf_CCM1_CH1_hardware_read_assert: assert property(default_interface_bf_bf_CCM1_CH1_hardware_read);
    default_interface_bf_bf_CCM1_CH1_sw_write_assert: assert property(default_interface_bf_bf_CCM1_CH1_sw_write);
    default_interface_CH1_CCUCTRL1_bf_CCM1_CH1_ff_reset_assert: assert property(default_interface_CH1_CCUCTRL1_bf_CCM1_CH1_ff_reset);
    default_interface_bf_bf_CapIM1_CH1_write_dummy_assert: assert property(default_interface_bf_bf_CapIM1_CH1_write_dummy);
    default_interface_bf_bf_CapIM1_CH1_hardware_read_assert: assert property(default_interface_bf_bf_CapIM1_CH1_hardware_read);
    default_interface_bf_bf_CapIM1_CH1_sw_write_assert: assert property(default_interface_bf_bf_CapIM1_CH1_sw_write);
    default_interface_CH1_CCUCTRL1_bf_CapIM1_CH1_ff_reset_assert: assert property(default_interface_CH1_CCUCTRL1_bf_CapIM1_CH1_ff_reset);
    default_interface_CH1_CCUCTRL1_sw_word_read_assert: assert property(default_interface_CH1_CCUCTRL1_sw_word_read);
    default_interface_CH1_CCUCTRL1_sw_half_word_read_0_assert: assert property(default_interface_CH1_CCUCTRL1_sw_half_word_read_0);
    default_interface_CH1_CCUCTRL1_sw_half_word_read_1_assert: assert property(default_interface_CH1_CCUCTRL1_sw_half_word_read_1);
    default_interface_CH1_CCUCTRL1_sw_byte_read_0_assert: assert property(default_interface_CH1_CCUCTRL1_sw_byte_read_0);
    default_interface_CH1_CCUCTRL1_sw_byte_read_1_assert: assert property(default_interface_CH1_CCUCTRL1_sw_byte_read_1);
    default_interface_CH1_CCUCTRL1_sw_byte_read_2_assert: assert property(default_interface_CH1_CCUCTRL1_sw_byte_read_2);
    default_interface_CH1_CCUCTRL1_sw_byte_read_3_assert: assert property(default_interface_CH1_CCUCTRL1_sw_byte_read_3);
    default_interface_bf_bf_CCUVAL1_CH1_sw_write_assert: assert property(default_interface_bf_bf_CCUVAL1_CH1_sw_write);
    default_interface_bf_bf_CCUVAL1_CH1_sw_access_error_assert: assert property(default_interface_bf_bf_CCUVAL1_CH1_sw_access_error);
    default_interface_CH1_CCUVAL1_sw_word_read_assert: assert property(default_interface_CH1_CCUVAL1_sw_word_read);
    default_interface_CH1_CCUVAL1_sw_half_word_read_0_assert: assert property(default_interface_CH1_CCUVAL1_sw_half_word_read_0);
    default_interface_CH1_CCUVAL1_sw_half_word_read_1_assert: assert property(default_interface_CH1_CCUVAL1_sw_half_word_read_1);
    default_interface_CH1_CCUVAL1_sw_byte_read_0_assert: assert property(default_interface_CH1_CCUVAL1_sw_byte_read_0);
    default_interface_CH1_CCUVAL1_sw_byte_read_1_assert: assert property(default_interface_CH1_CCUVAL1_sw_byte_read_1);
    default_interface_CH1_CCUVAL1_sw_byte_read_2_assert: assert property(default_interface_CH1_CCUVAL1_sw_byte_read_2);
    default_interface_CH1_CCUVAL1_sw_byte_read_3_assert: assert property(default_interface_CH1_CCUVAL1_sw_byte_read_3);
    default_interface_bf_bf_CCM2_CH1_write_dummy_assert: assert property(default_interface_bf_bf_CCM2_CH1_write_dummy);
    default_interface_bf_bf_CCM2_CH1_hardware_read_assert: assert property(default_interface_bf_bf_CCM2_CH1_hardware_read);
    default_interface_bf_bf_CCM2_CH1_sw_write_assert: assert property(default_interface_bf_bf_CCM2_CH1_sw_write);
    default_interface_CH1_CCUCTRL2_bf_CCM2_CH1_ff_reset_assert: assert property(default_interface_CH1_CCUCTRL2_bf_CCM2_CH1_ff_reset);
    default_interface_bf_bf_CapIM2_CH1_write_dummy_assert: assert property(default_interface_bf_bf_CapIM2_CH1_write_dummy);
    default_interface_bf_bf_CapIM2_CH1_hardware_read_assert: assert property(default_interface_bf_bf_CapIM2_CH1_hardware_read);
    default_interface_bf_bf_CapIM2_CH1_sw_write_assert: assert property(default_interface_bf_bf_CapIM2_CH1_sw_write);
    default_interface_CH1_CCUCTRL2_bf_CapIM2_CH1_ff_reset_assert: assert property(default_interface_CH1_CCUCTRL2_bf_CapIM2_CH1_ff_reset);
    default_interface_CH1_CCUCTRL2_sw_word_read_assert: assert property(default_interface_CH1_CCUCTRL2_sw_word_read);
    default_interface_CH1_CCUCTRL2_sw_half_word_read_0_assert: assert property(default_interface_CH1_CCUCTRL2_sw_half_word_read_0);
    default_interface_CH1_CCUCTRL2_sw_half_word_read_1_assert: assert property(default_interface_CH1_CCUCTRL2_sw_half_word_read_1);
    default_interface_CH1_CCUCTRL2_sw_byte_read_0_assert: assert property(default_interface_CH1_CCUCTRL2_sw_byte_read_0);
    default_interface_CH1_CCUCTRL2_sw_byte_read_1_assert: assert property(default_interface_CH1_CCUCTRL2_sw_byte_read_1);
    default_interface_CH1_CCUCTRL2_sw_byte_read_2_assert: assert property(default_interface_CH1_CCUCTRL2_sw_byte_read_2);
    default_interface_CH1_CCUCTRL2_sw_byte_read_3_assert: assert property(default_interface_CH1_CCUCTRL2_sw_byte_read_3);
    default_interface_bf_bf_CCUVAL2_CH1_sw_write_assert: assert property(default_interface_bf_bf_CCUVAL2_CH1_sw_write);
    default_interface_bf_bf_CCUVAL2_CH1_sw_access_error_assert: assert property(default_interface_bf_bf_CCUVAL2_CH1_sw_access_error);
    default_interface_CH1_CCUVAL2_sw_word_read_assert: assert property(default_interface_CH1_CCUVAL2_sw_word_read);
    default_interface_CH1_CCUVAL2_sw_half_word_read_0_assert: assert property(default_interface_CH1_CCUVAL2_sw_half_word_read_0);
    default_interface_CH1_CCUVAL2_sw_half_word_read_1_assert: assert property(default_interface_CH1_CCUVAL2_sw_half_word_read_1);
    default_interface_CH1_CCUVAL2_sw_byte_read_0_assert: assert property(default_interface_CH1_CCUVAL2_sw_byte_read_0);
    default_interface_CH1_CCUVAL2_sw_byte_read_1_assert: assert property(default_interface_CH1_CCUVAL2_sw_byte_read_1);
    default_interface_CH1_CCUVAL2_sw_byte_read_2_assert: assert property(default_interface_CH1_CCUVAL2_sw_byte_read_2);
    default_interface_CH1_CCUVAL2_sw_byte_read_3_assert: assert property(default_interface_CH1_CCUVAL2_sw_byte_read_3);
    default_interface_bf_bf_CCM3_CH1_write_dummy_assert: assert property(default_interface_bf_bf_CCM3_CH1_write_dummy);
    default_interface_bf_bf_CCM3_CH1_hardware_read_assert: assert property(default_interface_bf_bf_CCM3_CH1_hardware_read);
    default_interface_bf_bf_CCM3_CH1_sw_write_assert: assert property(default_interface_bf_bf_CCM3_CH1_sw_write);
    default_interface_CH1_CCUCTRL3_bf_CCM3_CH1_ff_reset_assert: assert property(default_interface_CH1_CCUCTRL3_bf_CCM3_CH1_ff_reset);
    default_interface_bf_bf_CapIM3_CH1_write_dummy_assert: assert property(default_interface_bf_bf_CapIM3_CH1_write_dummy);
    default_interface_bf_bf_CapIM3_CH1_hardware_read_assert: assert property(default_interface_bf_bf_CapIM3_CH1_hardware_read);
    default_interface_bf_bf_CapIM3_CH1_sw_write_assert: assert property(default_interface_bf_bf_CapIM3_CH1_sw_write);
    default_interface_CH1_CCUCTRL3_bf_CapIM3_CH1_ff_reset_assert: assert property(default_interface_CH1_CCUCTRL3_bf_CapIM3_CH1_ff_reset);
    default_interface_CH1_CCUCTRL3_sw_word_read_assert: assert property(default_interface_CH1_CCUCTRL3_sw_word_read);
    default_interface_CH1_CCUCTRL3_sw_half_word_read_0_assert: assert property(default_interface_CH1_CCUCTRL3_sw_half_word_read_0);
    default_interface_CH1_CCUCTRL3_sw_half_word_read_1_assert: assert property(default_interface_CH1_CCUCTRL3_sw_half_word_read_1);
    default_interface_CH1_CCUCTRL3_sw_byte_read_0_assert: assert property(default_interface_CH1_CCUCTRL3_sw_byte_read_0);
    default_interface_CH1_CCUCTRL3_sw_byte_read_1_assert: assert property(default_interface_CH1_CCUCTRL3_sw_byte_read_1);
    default_interface_CH1_CCUCTRL3_sw_byte_read_2_assert: assert property(default_interface_CH1_CCUCTRL3_sw_byte_read_2);
    default_interface_CH1_CCUCTRL3_sw_byte_read_3_assert: assert property(default_interface_CH1_CCUCTRL3_sw_byte_read_3);
    default_interface_bf_bf_CCUVAL3_CH1_sw_write_assert: assert property(default_interface_bf_bf_CCUVAL3_CH1_sw_write);
    default_interface_bf_bf_CCUVAL3_CH1_sw_access_error_assert: assert property(default_interface_bf_bf_CCUVAL3_CH1_sw_access_error);
    default_interface_CH1_CCUVAL3_sw_word_read_assert: assert property(default_interface_CH1_CCUVAL3_sw_word_read);
    default_interface_CH1_CCUVAL3_sw_half_word_read_0_assert: assert property(default_interface_CH1_CCUVAL3_sw_half_word_read_0);
    default_interface_CH1_CCUVAL3_sw_half_word_read_1_assert: assert property(default_interface_CH1_CCUVAL3_sw_half_word_read_1);
    default_interface_CH1_CCUVAL3_sw_byte_read_0_assert: assert property(default_interface_CH1_CCUVAL3_sw_byte_read_0);
    default_interface_CH1_CCUVAL3_sw_byte_read_1_assert: assert property(default_interface_CH1_CCUVAL3_sw_byte_read_1);
    default_interface_CH1_CCUVAL3_sw_byte_read_2_assert: assert property(default_interface_CH1_CCUVAL3_sw_byte_read_2);
    default_interface_CH1_CCUVAL3_sw_byte_read_3_assert: assert property(default_interface_CH1_CCUVAL3_sw_byte_read_3);
    default_interface_bf_bf_CCM4_CH1_write_dummy_assert: assert property(default_interface_bf_bf_CCM4_CH1_write_dummy);
    default_interface_bf_bf_CCM4_CH1_hardware_read_assert: assert property(default_interface_bf_bf_CCM4_CH1_hardware_read);
    default_interface_bf_bf_CCM4_CH1_sw_write_assert: assert property(default_interface_bf_bf_CCM4_CH1_sw_write);
    default_interface_CH1_CCUCTRL4_bf_CCM4_CH1_ff_reset_assert: assert property(default_interface_CH1_CCUCTRL4_bf_CCM4_CH1_ff_reset);
    default_interface_bf_bf_CapIM4_CH1_write_dummy_assert: assert property(default_interface_bf_bf_CapIM4_CH1_write_dummy);
    default_interface_bf_bf_CapIM4_CH1_hardware_read_assert: assert property(default_interface_bf_bf_CapIM4_CH1_hardware_read);
    default_interface_bf_bf_CapIM4_CH1_sw_write_assert: assert property(default_interface_bf_bf_CapIM4_CH1_sw_write);
    default_interface_CH1_CCUCTRL4_bf_CapIM4_CH1_ff_reset_assert: assert property(default_interface_CH1_CCUCTRL4_bf_CapIM4_CH1_ff_reset);
    default_interface_CH1_CCUCTRL4_sw_word_read_assert: assert property(default_interface_CH1_CCUCTRL4_sw_word_read);
    default_interface_CH1_CCUCTRL4_sw_half_word_read_0_assert: assert property(default_interface_CH1_CCUCTRL4_sw_half_word_read_0);
    default_interface_CH1_CCUCTRL4_sw_half_word_read_1_assert: assert property(default_interface_CH1_CCUCTRL4_sw_half_word_read_1);
    default_interface_CH1_CCUCTRL4_sw_byte_read_0_assert: assert property(default_interface_CH1_CCUCTRL4_sw_byte_read_0);
    default_interface_CH1_CCUCTRL4_sw_byte_read_1_assert: assert property(default_interface_CH1_CCUCTRL4_sw_byte_read_1);
    default_interface_CH1_CCUCTRL4_sw_byte_read_2_assert: assert property(default_interface_CH1_CCUCTRL4_sw_byte_read_2);
    default_interface_CH1_CCUCTRL4_sw_byte_read_3_assert: assert property(default_interface_CH1_CCUCTRL4_sw_byte_read_3);
    default_interface_bf_bf_CCUVAL4_CH1_sw_write_assert: assert property(default_interface_bf_bf_CCUVAL4_CH1_sw_write);
    default_interface_bf_bf_CCUVAL4_CH1_sw_access_error_assert: assert property(default_interface_bf_bf_CCUVAL4_CH1_sw_access_error);
    default_interface_CH1_CCUVAL4_sw_word_read_assert: assert property(default_interface_CH1_CCUVAL4_sw_word_read);
    default_interface_CH1_CCUVAL4_sw_half_word_read_0_assert: assert property(default_interface_CH1_CCUVAL4_sw_half_word_read_0);
    default_interface_CH1_CCUVAL4_sw_half_word_read_1_assert: assert property(default_interface_CH1_CCUVAL4_sw_half_word_read_1);
    default_interface_CH1_CCUVAL4_sw_byte_read_0_assert: assert property(default_interface_CH1_CCUVAL4_sw_byte_read_0);
    default_interface_CH1_CCUVAL4_sw_byte_read_1_assert: assert property(default_interface_CH1_CCUVAL4_sw_byte_read_1);
    default_interface_CH1_CCUVAL4_sw_byte_read_2_assert: assert property(default_interface_CH1_CCUVAL4_sw_byte_read_2);
    default_interface_CH1_CCUVAL4_sw_byte_read_3_assert: assert property(default_interface_CH1_CCUVAL4_sw_byte_read_3);
    default_interface_bf_bf_CCM5_CH1_write_dummy_assert: assert property(default_interface_bf_bf_CCM5_CH1_write_dummy);
    default_interface_bf_bf_CCM5_CH1_hardware_read_assert: assert property(default_interface_bf_bf_CCM5_CH1_hardware_read);
    default_interface_bf_bf_CCM5_CH1_sw_write_assert: assert property(default_interface_bf_bf_CCM5_CH1_sw_write);
    default_interface_CH1_CCUCTRL5_bf_CCM5_CH1_ff_reset_assert: assert property(default_interface_CH1_CCUCTRL5_bf_CCM5_CH1_ff_reset);
    default_interface_bf_bf_CapIM5_CH1_write_dummy_assert: assert property(default_interface_bf_bf_CapIM5_CH1_write_dummy);
    default_interface_bf_bf_CapIM5_CH1_hardware_read_assert: assert property(default_interface_bf_bf_CapIM5_CH1_hardware_read);
    default_interface_bf_bf_CapIM5_CH1_sw_write_assert: assert property(default_interface_bf_bf_CapIM5_CH1_sw_write);
    default_interface_CH1_CCUCTRL5_bf_CapIM5_CH1_ff_reset_assert: assert property(default_interface_CH1_CCUCTRL5_bf_CapIM5_CH1_ff_reset);
    default_interface_CH1_CCUCTRL5_sw_word_read_assert: assert property(default_interface_CH1_CCUCTRL5_sw_word_read);
    default_interface_CH1_CCUCTRL5_sw_half_word_read_0_assert: assert property(default_interface_CH1_CCUCTRL5_sw_half_word_read_0);
    default_interface_CH1_CCUCTRL5_sw_half_word_read_1_assert: assert property(default_interface_CH1_CCUCTRL5_sw_half_word_read_1);
    default_interface_CH1_CCUCTRL5_sw_byte_read_0_assert: assert property(default_interface_CH1_CCUCTRL5_sw_byte_read_0);
    default_interface_CH1_CCUCTRL5_sw_byte_read_1_assert: assert property(default_interface_CH1_CCUCTRL5_sw_byte_read_1);
    default_interface_CH1_CCUCTRL5_sw_byte_read_2_assert: assert property(default_interface_CH1_CCUCTRL5_sw_byte_read_2);
    default_interface_CH1_CCUCTRL5_sw_byte_read_3_assert: assert property(default_interface_CH1_CCUCTRL5_sw_byte_read_3);
    default_interface_bf_bf_CCUVAL5_CH1_sw_write_assert: assert property(default_interface_bf_bf_CCUVAL5_CH1_sw_write);
    default_interface_bf_bf_CCUVAL5_CH1_sw_access_error_assert: assert property(default_interface_bf_bf_CCUVAL5_CH1_sw_access_error);
    default_interface_CH1_CCUVAL5_sw_word_read_assert: assert property(default_interface_CH1_CCUVAL5_sw_word_read);
    default_interface_CH1_CCUVAL5_sw_half_word_read_0_assert: assert property(default_interface_CH1_CCUVAL5_sw_half_word_read_0);
    default_interface_CH1_CCUVAL5_sw_half_word_read_1_assert: assert property(default_interface_CH1_CCUVAL5_sw_half_word_read_1);
    default_interface_CH1_CCUVAL5_sw_byte_read_0_assert: assert property(default_interface_CH1_CCUVAL5_sw_byte_read_0);
    default_interface_CH1_CCUVAL5_sw_byte_read_1_assert: assert property(default_interface_CH1_CCUVAL5_sw_byte_read_1);
    default_interface_CH1_CCUVAL5_sw_byte_read_2_assert: assert property(default_interface_CH1_CCUVAL5_sw_byte_read_2);
    default_interface_CH1_CCUVAL5_sw_byte_read_3_assert: assert property(default_interface_CH1_CCUVAL5_sw_byte_read_3);

endmodule

//---------------------------------------------------------------------------------------------
bind tc_soc_timer mxnn_csc_prop inst_mxnn_csc_prop(.*);
//---------------------------------------------------------------------------------------------
