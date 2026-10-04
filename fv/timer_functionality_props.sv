
module timer_usf_props(
);
//------------------- Includes------------------------------------------------------------------

//-------------------- Macros ------------------------------------------------------------------
//----------------- Global Variables ----------------------------------------------------------




//----------------- Properties ----------------------------------------------------------------

    //
    property Timer_CH0_dont_count_intermediate_stateintermediate_2_Timer_CH0_dont_count2Timer_CH0_dont_count;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 4) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_reset_2_maxval_intermediate_stateintermediate_2_Timer_CH0_reset_2_maxval2Timer_CH0_reset_2_maxval;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 7) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_MAXVAL_CH0_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_no_reset_2_maxval_intermediate_stateintermediate_2_Timer_CH0_no_reset_2_maxval2Timer_CH0_no_reset_2_maxval;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out == 0) ) &&
	 (tc_soc_timer.comp_timer.comp_TimerChannel_0.comp_ACTVALCU.ExtRes_sync == 0) &&
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 4) &&
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out != 7) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out)) );
    endproperty
	//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_reset_2_maxval_1_intermediate_stateintermediate_2_Timer_CH0_reset_2_maxval_12Timer_CH0_reset_2_maxval_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 3) ) && 
	 ( $past(tc_soc_timer.TIM0_ExtRes) == 1) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_MAXVAL_CH0_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_dont_count_1_intermediate_stateintermediate_2_Timer_CH0_dont_count_12Timer_CH0_dont_count_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 3) ) && 
	 ( $past(tc_soc_timer.TIM0_ExtRes) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 4) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_reset_2_maxval_2_intermediate_stateintermediate_2_Timer_CH0_reset_2_maxval_22Timer_CH0_reset_2_maxval_2;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 4) ) && 
	 ( $past(tc_soc_timer.TIM0_ExtRes) == 0) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_MAXVAL_CH0_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_dont_count_2_intermediate_stateintermediate_2_Timer_CH0_dont_count_22Timer_CH0_dont_count_2;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 4) ) && 
	 ( $past(tc_soc_timer.TIM0_ExtRes) == 1) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 4) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_dont_count_3_intermediate_stateintermediate_2_Timer_CH0_dont_count_32Timer_CH0_dont_count_3;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 6) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 4) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_dont_count_4_intermediate_stateintermediate_2_Timer_CH0_dont_count_42Timer_CH0_dont_count_4;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 4) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_reset_2_maxval_3_intermediate_stateintermediate_2_Timer_CH0_reset_2_maxval_32Timer_CH0_reset_2_maxval_3;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 1) ) && 
	  $past( $rose(tc_soc_timer.TIM0_ExtRes)) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_MAXVAL_CH0_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_dont_count_5_intermediate_stateintermediate_2_Timer_CH0_dont_count_52Timer_CH0_dont_count_5;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 1) ) && 
	 ( $past( $rose(tc_soc_timer.TIM0_ExtRes)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 4) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_reset_2_maxval_4_intermediate_stateintermediate_2_Timer_CH0_reset_2_maxval_42Timer_CH0_reset_2_maxval_4;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 2) ) && 
	  $past( $fell(tc_soc_timer.TIM0_ExtRes)) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_MAXVAL_CH0_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_dont_count_6_intermediate_stateintermediate_2_Timer_CH0_dont_count_62Timer_CH0_dont_count_6;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 2) ) && 
	 ( $past( $fell(tc_soc_timer.TIM0_ExtRes)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 4) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_reset_2_maxval_5_intermediate_stateintermediate_2_Timer_CH0_reset_2_maxval_52Timer_CH0_reset_2_maxval_5;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 5) ) && 
	 ( $past( $rose(tc_soc_timer.TIM0_ExtRes)) ||  $past( $fell(tc_soc_timer.TIM0_ExtRes))) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_MAXVAL_CH0_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_dont_count_7_intermediate_stateintermediate_2_Timer_CH0_dont_count_72Timer_CH0_dont_count_7;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 5) ) && 
	 (( $past( $rose(tc_soc_timer.TIM0_ExtRes)) ||  $past( $fell(tc_soc_timer.TIM0_ExtRes))) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 4) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_reset_2_maxval_6_intermediate_stateintermediate_2_Timer_CH0_reset_2_maxval_62Timer_CH0_reset_2_maxval_6;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 3) ) && 
	 ( $past(tc_soc_timer.TIM0_ExtRes) == 1) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_MAXVAL_CH0_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_down_count_intermediate_stateintermediate_2_Timer_CH0_down_count2Timer_CH0_down_count;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 3) ) && 
	 ( $past(tc_soc_timer.TIM0_ExtRes) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 3) ) && 
	 ( $past(tc_soc_timer.TIM0_ExtCnt) == 1) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out == ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out) - 1)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_dont_count_8_intermediate_stateintermediate_2_Timer_CH0_dont_count_82Timer_CH0_dont_count_8;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 3) ) && 
	 ( $past(tc_soc_timer.TIM0_ExtRes) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 3) ) && 
	 ( $past(tc_soc_timer.TIM0_ExtCnt) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 4) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_down_count_1_intermediate_stateintermediate_2_Timer_CH0_down_count_12Timer_CH0_down_count_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 3) ) && 
	 ( $past(tc_soc_timer.TIM0_ExtRes) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 4) ) && 
	 ( $past(tc_soc_timer.TIM0_ExtCnt) == 0) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out == ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out) - 1)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_dont_count_9_intermediate_stateintermediate_2_Timer_CH0_dont_count_92Timer_CH0_dont_count_9;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 3) ) && 
	 ( $past(tc_soc_timer.TIM0_ExtRes) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 4) ) && 
	 ( $past(tc_soc_timer.TIM0_ExtCnt) == 1) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 4) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_dont_count_10_intermediate_stateintermediate_2_Timer_CH0_dont_count_102Timer_CH0_dont_count_10;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 3) ) && 
	 ( $past(tc_soc_timer.TIM0_ExtRes) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 6) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 4) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_dont_count_11_intermediate_stateintermediate_2_Timer_CH0_dont_count_112Timer_CH0_dont_count_11;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 3) ) && 
	 ( $past(tc_soc_timer.TIM0_ExtRes) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 7) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 4) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_down_count_2_intermediate_stateintermediate_2_Timer_CH0_down_count_22Timer_CH0_down_count_2;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 3) ) && 
	 ( $past(tc_soc_timer.TIM0_ExtRes) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 4) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out == ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out) - 1)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_down_count_3_intermediate_stateintermediate_2_Timer_CH0_down_count_32Timer_CH0_down_count_3;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 3) ) && 
	 ( $past(tc_soc_timer.TIM0_ExtRes) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 1) ) && 
	  $past( $rose(tc_soc_timer.TIM0_ExtCnt)) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out == ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out) - 1)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_dont_count_12_intermediate_stateintermediate_2_Timer_CH0_dont_count_122Timer_CH0_dont_count_12;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 3) ) && 
	 ( $past(tc_soc_timer.TIM0_ExtRes) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 1) ) && 
	 ( $past( $rose(tc_soc_timer.TIM0_ExtCnt)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 4) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_down_count_4_intermediate_stateintermediate_2_Timer_CH0_down_count_42Timer_CH0_down_count_4;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 3) ) && 
	 ( $past(tc_soc_timer.TIM0_ExtRes) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 2) ) && 
	  $past( $fell(tc_soc_timer.TIM0_ExtCnt)) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out == ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out) - 1)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_dont_count_13_intermediate_stateintermediate_2_Timer_CH0_dont_count_132Timer_CH0_dont_count_13;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 3) ) && 
	 ( $past(tc_soc_timer.TIM0_ExtRes) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 2) ) && 
	 ( $past( $fell(tc_soc_timer.TIM0_ExtCnt)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 4) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_down_count_5_intermediate_stateintermediate_2_Timer_CH0_down_count_52Timer_CH0_down_count_5;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 3) ) && 
	 ( $past(tc_soc_timer.TIM0_ExtRes) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 5) ) && 
	 ( $past( $rose(tc_soc_timer.TIM0_ExtCnt)) ||  $past( $fell(tc_soc_timer.TIM0_ExtCnt))) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out == ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out) - 1)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_dont_count_14_intermediate_stateintermediate_2_Timer_CH0_dont_count_142Timer_CH0_dont_count_14;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 3) ) && 
	 ( $past(tc_soc_timer.TIM0_ExtRes) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 5) ) && 
	 (( $past( $rose(tc_soc_timer.TIM0_ExtCnt)) ||  $past( $fell(tc_soc_timer.TIM0_ExtCnt))) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 4) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_down_count_6_intermediate_stateintermediate_2_Timer_CH0_down_count_62Timer_CH0_down_count_6;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 3) ) && 
	 ( $past(tc_soc_timer.TIM0_ExtRes) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 1) ) && 
	  $past( $rose(tc_soc_timer.TIM0_ExtCnt)) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out == ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out) - 1)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_dont_count_15_intermediate_stateintermediate_2_Timer_CH0_dont_count_152Timer_CH0_dont_count_15;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 3) ) && 
	 ( $past(tc_soc_timer.TIM0_ExtRes) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 1) ) && 
	 ( $past( $rose(tc_soc_timer.TIM0_ExtCnt)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 4) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_reset_2_maxval_7_intermediate_stateintermediate_2_Timer_CH0_reset_2_maxval_72Timer_CH0_reset_2_maxval_7;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 4) ) && 
	 ( $past(tc_soc_timer.TIM0_ExtRes) == 0) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_MAXVAL_CH0_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_down_count_7_intermediate_stateintermediate_2_Timer_CH0_down_count_72Timer_CH0_down_count_7;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 4) ) && 
	 ( $past(tc_soc_timer.TIM0_ExtRes) == 1) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 3) ) && 
	 ( $past(tc_soc_timer.TIM0_ExtCnt) == 1) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out == ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out) - 1)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_dont_count_16_intermediate_stateintermediate_2_Timer_CH0_dont_count_162Timer_CH0_dont_count_16;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 4) ) && 
	 ( $past(tc_soc_timer.TIM0_ExtRes) == 1) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 3) ) && 
	 ( $past(tc_soc_timer.TIM0_ExtCnt) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 4) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_down_count_8_intermediate_stateintermediate_2_Timer_CH0_down_count_82Timer_CH0_down_count_8;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 4) ) && 
	 ( $past(tc_soc_timer.TIM0_ExtRes) == 1) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 4) ) && 
	 ( $past(tc_soc_timer.TIM0_ExtCnt) == 0) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out == ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out) - 1)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_dont_count_17_intermediate_stateintermediate_2_Timer_CH0_dont_count_172Timer_CH0_dont_count_17;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 4) ) && 
	 ( $past(tc_soc_timer.TIM0_ExtRes) == 1) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 4) ) && 
	 ( $past(tc_soc_timer.TIM0_ExtCnt) == 1) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 4) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_dont_count_18_intermediate_stateintermediate_2_Timer_CH0_dont_count_182Timer_CH0_dont_count_18;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 4) ) && 
	 ( $past(tc_soc_timer.TIM0_ExtRes) == 1) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 6) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 4) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_dont_count_19_intermediate_stateintermediate_2_Timer_CH0_dont_count_192Timer_CH0_dont_count_19;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 4) ) && 
	 ( $past(tc_soc_timer.TIM0_ExtRes) == 1) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 7) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 4) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_down_count_9_intermediate_stateintermediate_2_Timer_CH0_down_count_92Timer_CH0_down_count_9;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 4) ) && 
	 ( $past(tc_soc_timer.TIM0_ExtRes) == 1) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 4) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out == ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out) - 1)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_down_count_10_intermediate_stateintermediate_2_Timer_CH0_down_count_102Timer_CH0_down_count_10;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 4) ) && 
	 ( $past(tc_soc_timer.TIM0_ExtRes) == 1) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 2) ) && 
	  $past( $fell(tc_soc_timer.TIM0_ExtCnt)) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out == ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out) - 1)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_dont_count_20_intermediate_stateintermediate_2_Timer_CH0_dont_count_202Timer_CH0_dont_count_20;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 4) ) && 
	 ( $past(tc_soc_timer.TIM0_ExtRes) == 1) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 2) ) && 
	 ( $past( $fell(tc_soc_timer.TIM0_ExtCnt)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 4) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_down_count_11_intermediate_stateintermediate_2_Timer_CH0_down_count_112Timer_CH0_down_count_11;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 4) ) && 
	 ( $past(tc_soc_timer.TIM0_ExtRes) == 1) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 5) ) && 
	 ( $past( $rose(tc_soc_timer.TIM0_ExtCnt)) ||  $past( $fell(tc_soc_timer.TIM0_ExtCnt))) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out == ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out) - 1)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_dont_count_21_intermediate_stateintermediate_2_Timer_CH0_dont_count_212Timer_CH0_dont_count_21;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 4) ) && 
	 ( $past(tc_soc_timer.TIM0_ExtRes) == 1) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 5) ) && 
	 (( $past( $rose(tc_soc_timer.TIM0_ExtCnt)) ||  $past( $fell(tc_soc_timer.TIM0_ExtCnt))) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 4) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_down_count_12_intermediate_stateintermediate_2_Timer_CH0_down_count_122Timer_CH0_down_count_12;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 6) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 3) ) && 
	 ( $past(tc_soc_timer.TIM0_ExtCnt) == 1) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out == ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out) - 1)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_dont_count_22_intermediate_stateintermediate_2_Timer_CH0_dont_count_222Timer_CH0_dont_count_22;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 6) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 3) ) && 
	 ( $past(tc_soc_timer.TIM0_ExtCnt) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 4) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_down_count_13_intermediate_stateintermediate_2_Timer_CH0_down_count_132Timer_CH0_down_count_13;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 6) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 4) ) && 
	 ( $past(tc_soc_timer.TIM0_ExtCnt) == 0) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out == ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out) - 1)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_dont_count_23_intermediate_stateintermediate_2_Timer_CH0_dont_count_232Timer_CH0_dont_count_23;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 6) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 4) ) && 
	 ( $past(tc_soc_timer.TIM0_ExtCnt) == 1) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 4) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_dont_count_24_intermediate_stateintermediate_2_Timer_CH0_dont_count_242Timer_CH0_dont_count_24;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 6) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 6) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 4) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_dont_count_25_intermediate_stateintermediate_2_Timer_CH0_dont_count_252Timer_CH0_dont_count_25;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 6) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 7) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 4) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_down_count_14_intermediate_stateintermediate_2_Timer_CH0_down_count_142Timer_CH0_down_count_14;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 6) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 4) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out == ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out) - 1)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_down_count_15_intermediate_stateintermediate_2_Timer_CH0_down_count_152Timer_CH0_down_count_15;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 6) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 1) ) && 
	  $past( $rose(tc_soc_timer.TIM0_ExtCnt)) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out == ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out) - 1)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_dont_count_26_intermediate_stateintermediate_2_Timer_CH0_dont_count_262Timer_CH0_dont_count_26;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 6) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 1) ) && 
	 ( $past( $rose(tc_soc_timer.TIM0_ExtCnt)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 4) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_down_count_16_intermediate_stateintermediate_2_Timer_CH0_down_count_162Timer_CH0_down_count_16;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 6) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 2) ) && 
	  $past( $fell(tc_soc_timer.TIM0_ExtCnt)) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out == ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out) - 1)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_dont_count_27_intermediate_stateintermediate_2_Timer_CH0_dont_count_272Timer_CH0_dont_count_27;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 6) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 2) ) && 
	 ( $past( $fell(tc_soc_timer.TIM0_ExtCnt)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 4) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_down_count_17_intermediate_stateintermediate_2_Timer_CH0_down_count_172Timer_CH0_down_count_17;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 6) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 5) ) && 
	 ( $past( $rose(tc_soc_timer.TIM0_ExtCnt)) ||  $past( $fell(tc_soc_timer.TIM0_ExtCnt))) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out == ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out) - 1)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_dont_count_28_intermediate_stateintermediate_2_Timer_CH0_dont_count_282Timer_CH0_dont_count_28;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 6) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 5) ) && 
	 (( $past( $rose(tc_soc_timer.TIM0_ExtCnt)) ||  $past( $fell(tc_soc_timer.TIM0_ExtCnt))) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 4) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_down_count_18_intermediate_stateintermediate_2_Timer_CH0_down_count_182Timer_CH0_down_count_18;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 7) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 3) ) && 
	 ( $past(tc_soc_timer.TIM0_ExtCnt) == 1) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out == ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out) - 1)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_dont_count_29_intermediate_stateintermediate_2_Timer_CH0_dont_count_292Timer_CH0_dont_count_29;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 7) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 3) ) && 
	 ( $past(tc_soc_timer.TIM0_ExtCnt) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 4) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_down_count_19_intermediate_stateintermediate_2_Timer_CH0_down_count_192Timer_CH0_down_count_19;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 7) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 4) ) && 
	 ( $past(tc_soc_timer.TIM0_ExtCnt) == 0) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out == ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out) - 1)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_dont_count_30_intermediate_stateintermediate_2_Timer_CH0_dont_count_302Timer_CH0_dont_count_30;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 7) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 4) ) && 
	 ( $past(tc_soc_timer.TIM0_ExtCnt) == 1) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 4) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_dont_count_31_intermediate_stateintermediate_2_Timer_CH0_dont_count_312Timer_CH0_dont_count_31;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 7) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 6) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 4) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_dont_count_32_intermediate_stateintermediate_2_Timer_CH0_dont_count_322Timer_CH0_dont_count_32;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 7) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 7) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 4) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_down_count_20_intermediate_stateintermediate_2_Timer_CH0_down_count_202Timer_CH0_down_count_20;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 7) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 4) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out == ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out) - 1)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_down_count_21_intermediate_stateintermediate_2_Timer_CH0_down_count_212Timer_CH0_down_count_21;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 7) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 1) ) && 
	  $past( $rose(tc_soc_timer.TIM0_ExtCnt)) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out == ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out) - 1)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_dont_count_33_intermediate_stateintermediate_2_Timer_CH0_dont_count_332Timer_CH0_dont_count_33;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 7) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 1) ) && 
	 ( $past( $rose(tc_soc_timer.TIM0_ExtCnt)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 4) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_down_count_22_intermediate_stateintermediate_2_Timer_CH0_down_count_222Timer_CH0_down_count_22;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 7) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 2) ) && 
	  $past( $fell(tc_soc_timer.TIM0_ExtCnt)) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out == ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out) - 1)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_dont_count_34_intermediate_stateintermediate_2_Timer_CH0_dont_count_342Timer_CH0_dont_count_34;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 7) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 2) ) && 
	 ( $past( $fell(tc_soc_timer.TIM0_ExtCnt)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 4) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_down_count_23_intermediate_stateintermediate_2_Timer_CH0_down_count_232Timer_CH0_down_count_23;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 7) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 5) ) && 
	 ( $past( $rose(tc_soc_timer.TIM0_ExtCnt)) ||  $past( $fell(tc_soc_timer.TIM0_ExtCnt))) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out == ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out) - 1)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_dont_count_35_intermediate_stateintermediate_2_Timer_CH0_dont_count_352Timer_CH0_dont_count_35;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 7) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 5) ) && 
	 (( $past( $rose(tc_soc_timer.TIM0_ExtCnt)) ||  $past( $fell(tc_soc_timer.TIM0_ExtCnt))) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 4) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_down_count_24_intermediate_stateintermediate_2_Timer_CH0_down_count_242Timer_CH0_down_count_24;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 3) ) && 
	 ( $past(tc_soc_timer.TIM0_ExtCnt) == 1) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out == ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out) - 1)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_dont_count_36_intermediate_stateintermediate_2_Timer_CH0_dont_count_362Timer_CH0_dont_count_36;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 3) ) && 
	 ( $past(tc_soc_timer.TIM0_ExtCnt) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 4) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_down_count_25_intermediate_stateintermediate_2_Timer_CH0_down_count_252Timer_CH0_down_count_25;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 4) ) && 
	 ( $past(tc_soc_timer.TIM0_ExtCnt) == 0) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out == ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out) - 1)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_dont_count_37_intermediate_stateintermediate_2_Timer_CH0_dont_count_372Timer_CH0_dont_count_37;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 4) ) && 
	 ( $past(tc_soc_timer.TIM0_ExtCnt) == 1) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 4) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_dont_count_38_intermediate_stateintermediate_2_Timer_CH0_dont_count_382Timer_CH0_dont_count_38;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 6) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 4) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_dont_count_39_intermediate_stateintermediate_2_Timer_CH0_dont_count_392Timer_CH0_dont_count_39;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 7) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 4) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_down_count_26_intermediate_stateintermediate_2_Timer_CH0_down_count_262Timer_CH0_down_count_26;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 4) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out == ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out) - 1)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_down_count_27_intermediate_stateintermediate_2_Timer_CH0_down_count_272Timer_CH0_down_count_27;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 1) ) && 
	  $past( $rose(tc_soc_timer.TIM0_ExtCnt)) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out == ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out) - 1)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_dont_count_40_intermediate_stateintermediate_2_Timer_CH0_dont_count_402Timer_CH0_dont_count_40;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 1) ) && 
	 ( $past( $rose(tc_soc_timer.TIM0_ExtCnt)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 4) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_down_count_28_intermediate_stateintermediate_2_Timer_CH0_down_count_282Timer_CH0_down_count_28;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 2) ) && 
	  $past( $fell(tc_soc_timer.TIM0_ExtCnt)) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out == ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out) - 1)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_dont_count_41_intermediate_stateintermediate_2_Timer_CH0_dont_count_412Timer_CH0_dont_count_41;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 2) ) && 
	 ( $past( $fell(tc_soc_timer.TIM0_ExtCnt)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 4) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_down_count_29_intermediate_stateintermediate_2_Timer_CH0_down_count_292Timer_CH0_down_count_29;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 5) ) && 
	 ( $past( $rose(tc_soc_timer.TIM0_ExtCnt)) ||  $past( $fell(tc_soc_timer.TIM0_ExtCnt))) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out == ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out) - 1)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_dont_count_42_intermediate_stateintermediate_2_Timer_CH0_dont_count_422Timer_CH0_dont_count_42;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 5) ) && 
	 (( $past( $rose(tc_soc_timer.TIM0_ExtCnt)) ||  $past( $fell(tc_soc_timer.TIM0_ExtCnt))) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 4) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_reset_2_maxval_8_intermediate_stateintermediate_2_Timer_CH0_reset_2_maxval_82Timer_CH0_reset_2_maxval_8;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 1) ) && 
	  $past( $rose(tc_soc_timer.TIM0_ExtRes)) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_MAXVAL_CH0_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_down_count_30_intermediate_stateintermediate_2_Timer_CH0_down_count_302Timer_CH0_down_count_30;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 1) ) && 
	 ( $past( $rose(tc_soc_timer.TIM0_ExtRes)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 3) ) && 
	 ( $past(tc_soc_timer.TIM0_ExtCnt) == 1) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out == ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out) - 1)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_dont_count_43_intermediate_stateintermediate_2_Timer_CH0_dont_count_432Timer_CH0_dont_count_43;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 1) ) && 
	 ( $past( $rose(tc_soc_timer.TIM0_ExtRes)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 3) ) && 
	 ( $past(tc_soc_timer.TIM0_ExtCnt) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 4) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_down_count_31_intermediate_stateintermediate_2_Timer_CH0_down_count_312Timer_CH0_down_count_31;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 1) ) && 
	 ( $past( $rose(tc_soc_timer.TIM0_ExtRes)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 4) ) && 
	 ( $past(tc_soc_timer.TIM0_ExtCnt) == 0) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out == ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out) - 1)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_dont_count_44_intermediate_stateintermediate_2_Timer_CH0_dont_count_442Timer_CH0_dont_count_44;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 1) ) && 
	 ( $past( $rose(tc_soc_timer.TIM0_ExtRes)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 4) ) && 
	 ( $past(tc_soc_timer.TIM0_ExtCnt) == 1) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 4) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_dont_count_45_intermediate_stateintermediate_2_Timer_CH0_dont_count_452Timer_CH0_dont_count_45;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 1) ) && 
	 ( $past( $rose(tc_soc_timer.TIM0_ExtRes)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 6) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 4) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_dont_count_46_intermediate_stateintermediate_2_Timer_CH0_dont_count_462Timer_CH0_dont_count_46;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 1) ) && 
	 ( $past( $rose(tc_soc_timer.TIM0_ExtRes)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 7) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 4) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_down_count_32_intermediate_stateintermediate_2_Timer_CH0_down_count_322Timer_CH0_down_count_32;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 1) ) && 
	 ( $past( $rose(tc_soc_timer.TIM0_ExtRes)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 4) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out == ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out) - 1)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_down_count_33_intermediate_stateintermediate_2_Timer_CH0_down_count_332Timer_CH0_down_count_33;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 1) ) && 
	 ( $past( $rose(tc_soc_timer.TIM0_ExtRes)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 1) ) && 
	  $past( $rose(tc_soc_timer.TIM0_ExtCnt)) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out == ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out) - 1)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_dont_count_47_intermediate_stateintermediate_2_Timer_CH0_dont_count_472Timer_CH0_dont_count_47;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 1) ) && 
	 ( $past( $rose(tc_soc_timer.TIM0_ExtRes)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 1) ) && 
	 ( $past( $rose(tc_soc_timer.TIM0_ExtCnt)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 4) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_down_count_34_intermediate_stateintermediate_2_Timer_CH0_down_count_342Timer_CH0_down_count_34;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 1) ) && 
	 ( $past( $rose(tc_soc_timer.TIM0_ExtRes)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 2) ) && 
	  $past( $fell(tc_soc_timer.TIM0_ExtCnt)) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out == ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out) - 1)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_dont_count_48_intermediate_stateintermediate_2_Timer_CH0_dont_count_482Timer_CH0_dont_count_48;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 1) ) && 
	 ( $past( $rose(tc_soc_timer.TIM0_ExtRes)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 2) ) && 
	 ( $past( $fell(tc_soc_timer.TIM0_ExtCnt)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 4) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_down_count_35_intermediate_stateintermediate_2_Timer_CH0_down_count_352Timer_CH0_down_count_35;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 1) ) && 
	 ( $past( $rose(tc_soc_timer.TIM0_ExtRes)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 5) ) && 
	 ( $past( $rose(tc_soc_timer.TIM0_ExtCnt)) ||  $past( $fell(tc_soc_timer.TIM0_ExtCnt))) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out == ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out) - 1)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_dont_count_49_intermediate_stateintermediate_2_Timer_CH0_dont_count_492Timer_CH0_dont_count_49;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 1) ) && 
	 ( $past( $rose(tc_soc_timer.TIM0_ExtRes)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 5) ) && 
	 (( $past( $rose(tc_soc_timer.TIM0_ExtCnt)) ||  $past( $fell(tc_soc_timer.TIM0_ExtCnt))) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 4) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_reset_2_maxval_9_intermediate_stateintermediate_2_Timer_CH0_reset_2_maxval_92Timer_CH0_reset_2_maxval_9;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 2) ) && 
	  $past( $fell(tc_soc_timer.TIM0_ExtRes)) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_MAXVAL_CH0_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_down_count_36_intermediate_stateintermediate_2_Timer_CH0_down_count_362Timer_CH0_down_count_36;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 2) ) && 
	 ( $past( $fell(tc_soc_timer.TIM0_ExtRes)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 3) ) && 
	 ( $past(tc_soc_timer.TIM0_ExtCnt) == 1) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out == ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out) - 1)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_dont_count_50_intermediate_stateintermediate_2_Timer_CH0_dont_count_502Timer_CH0_dont_count_50;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 2) ) && 
	 ( $past( $fell(tc_soc_timer.TIM0_ExtRes)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 3) ) && 
	 ( $past(tc_soc_timer.TIM0_ExtCnt) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 4) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_down_count_37_intermediate_stateintermediate_2_Timer_CH0_down_count_372Timer_CH0_down_count_37;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 2) ) && 
	 ( $past( $fell(tc_soc_timer.TIM0_ExtRes)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 4) ) && 
	 ( $past(tc_soc_timer.TIM0_ExtCnt) == 0) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out == ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out) - 1)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_dont_count_51_intermediate_stateintermediate_2_Timer_CH0_dont_count_512Timer_CH0_dont_count_51;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 2) ) && 
	 ( $past( $fell(tc_soc_timer.TIM0_ExtRes)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 4) ) && 
	 ( $past(tc_soc_timer.TIM0_ExtCnt) == 1) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 4) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_dont_count_52_intermediate_stateintermediate_2_Timer_CH0_dont_count_522Timer_CH0_dont_count_52;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 2) ) && 
	 ( $past( $fell(tc_soc_timer.TIM0_ExtRes)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 6) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 4) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_dont_count_53_intermediate_stateintermediate_2_Timer_CH0_dont_count_532Timer_CH0_dont_count_53;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 2) ) && 
	 ( $past( $fell(tc_soc_timer.TIM0_ExtRes)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 7) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 4) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_down_count_38_intermediate_stateintermediate_2_Timer_CH0_down_count_382Timer_CH0_down_count_38;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 2) ) && 
	 ( $past( $fell(tc_soc_timer.TIM0_ExtRes)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 4) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out == ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out) - 1)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_down_count_39_intermediate_stateintermediate_2_Timer_CH0_down_count_392Timer_CH0_down_count_39;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 2) ) && 
	 ( $past( $fell(tc_soc_timer.TIM0_ExtRes)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 1) ) && 
	  $past( $rose(tc_soc_timer.TIM0_ExtCnt)) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out == ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out) - 1)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_dont_count_54_intermediate_stateintermediate_2_Timer_CH0_dont_count_542Timer_CH0_dont_count_54;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 2) ) && 
	 ( $past( $fell(tc_soc_timer.TIM0_ExtRes)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 1) ) && 
	 ( $past( $rose(tc_soc_timer.TIM0_ExtCnt)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 4) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_down_count_40_intermediate_stateintermediate_2_Timer_CH0_down_count_402Timer_CH0_down_count_40;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 2) ) && 
	 ( $past( $fell(tc_soc_timer.TIM0_ExtRes)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 2) ) && 
	  $past( $fell(tc_soc_timer.TIM0_ExtCnt)) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out == ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out) - 1)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_dont_count_55_intermediate_stateintermediate_2_Timer_CH0_dont_count_552Timer_CH0_dont_count_55;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 2) ) && 
	 ( $past( $fell(tc_soc_timer.TIM0_ExtRes)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 2) ) && 
	 ( $past( $fell(tc_soc_timer.TIM0_ExtCnt)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 4) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_down_count_41_intermediate_stateintermediate_2_Timer_CH0_down_count_412Timer_CH0_down_count_41;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 2) ) && 
	 ( $past( $fell(tc_soc_timer.TIM0_ExtRes)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 5) ) && 
	 ( $past( $rose(tc_soc_timer.TIM0_ExtCnt)) ||  $past( $fell(tc_soc_timer.TIM0_ExtCnt))) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out == ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out) - 1)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_dont_count_56_intermediate_stateintermediate_2_Timer_CH0_dont_count_562Timer_CH0_dont_count_56;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 2) ) && 
	 ( $past( $fell(tc_soc_timer.TIM0_ExtRes)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 5) ) && 
	 (( $past( $rose(tc_soc_timer.TIM0_ExtCnt)) ||  $past( $fell(tc_soc_timer.TIM0_ExtCnt))) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 4) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_reset_2_maxval_10_intermediate_stateintermediate_2_Timer_CH0_reset_2_maxval_102Timer_CH0_reset_2_maxval_10;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 5) ) && 
	 ( $past( $rose(tc_soc_timer.TIM0_ExtRes)) ||  $past( $fell(tc_soc_timer.TIM0_ExtRes))) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_MAXVAL_CH0_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_down_count_42_intermediate_stateintermediate_2_Timer_CH0_down_count_422Timer_CH0_down_count_42;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 5) ) && 
	 (( $past( $rose(tc_soc_timer.TIM0_ExtRes)) ||  $past( $fell(tc_soc_timer.TIM0_ExtRes))) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 3) ) && 
	 ( $past(tc_soc_timer.TIM0_ExtCnt) == 1) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out == ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out) - 1)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_dont_count_57_intermediate_stateintermediate_2_Timer_CH0_dont_count_572Timer_CH0_dont_count_57;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 5) ) && 
	 (( $past( $rose(tc_soc_timer.TIM0_ExtRes)) ||  $past( $fell(tc_soc_timer.TIM0_ExtRes))) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 3) ) && 
	 ( $past(tc_soc_timer.TIM0_ExtCnt) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 4) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_down_count_43_intermediate_stateintermediate_2_Timer_CH0_down_count_432Timer_CH0_down_count_43;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 5) ) && 
	 (( $past( $rose(tc_soc_timer.TIM0_ExtRes)) ||  $past( $fell(tc_soc_timer.TIM0_ExtRes))) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 4) ) && 
	 ( $past(tc_soc_timer.TIM0_ExtCnt) == 0) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out == ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out) - 1)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_dont_count_58_intermediate_stateintermediate_2_Timer_CH0_dont_count_582Timer_CH0_dont_count_58;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 5) ) && 
	 (( $past( $rose(tc_soc_timer.TIM0_ExtRes)) ||  $past( $fell(tc_soc_timer.TIM0_ExtRes))) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 4) ) && 
	 ( $past(tc_soc_timer.TIM0_ExtCnt) == 1) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 4) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_dont_count_59_intermediate_stateintermediate_2_Timer_CH0_dont_count_592Timer_CH0_dont_count_59;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 5) ) && 
	 (( $past( $rose(tc_soc_timer.TIM0_ExtRes)) ||  $past( $fell(tc_soc_timer.TIM0_ExtRes))) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 6) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 4) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_dont_count_60_intermediate_stateintermediate_2_Timer_CH0_dont_count_602Timer_CH0_dont_count_60;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 5) ) && 
	 (( $past( $rose(tc_soc_timer.TIM0_ExtRes)) ||  $past( $fell(tc_soc_timer.TIM0_ExtRes))) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 7) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 4) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_down_count_44_intermediate_stateintermediate_2_Timer_CH0_down_count_442Timer_CH0_down_count_44;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 5) ) && 
	 (( $past( $rose(tc_soc_timer.TIM0_ExtRes)) ||  $past( $fell(tc_soc_timer.TIM0_ExtRes))) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 4) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out == ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out) - 1)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_down_count_45_intermediate_stateintermediate_2_Timer_CH0_down_count_452Timer_CH0_down_count_45;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 5) ) && 
	 (( $past( $rose(tc_soc_timer.TIM0_ExtRes)) ||  $past( $fell(tc_soc_timer.TIM0_ExtRes))) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 1) ) && 
	  $past( $rose(tc_soc_timer.TIM0_ExtCnt)) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out == ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out) - 1)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_dont_count_61_intermediate_stateintermediate_2_Timer_CH0_dont_count_612Timer_CH0_dont_count_61;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 5) ) && 
	 (( $past( $rose(tc_soc_timer.TIM0_ExtRes)) ||  $past( $fell(tc_soc_timer.TIM0_ExtRes))) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 1) ) && 
	 ( $past( $rose(tc_soc_timer.TIM0_ExtCnt)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 4) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_down_count_46_intermediate_stateintermediate_2_Timer_CH0_down_count_462Timer_CH0_down_count_46;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 5) ) && 
	 (( $past( $rose(tc_soc_timer.TIM0_ExtRes)) ||  $past( $fell(tc_soc_timer.TIM0_ExtRes))) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 2) ) && 
	  $past( $fell(tc_soc_timer.TIM0_ExtCnt)) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out == ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out) - 1)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_dont_count_62_intermediate_stateintermediate_2_Timer_CH0_dont_count_622Timer_CH0_dont_count_62;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 5) ) && 
	 (( $past( $rose(tc_soc_timer.TIM0_ExtRes)) ||  $past( $fell(tc_soc_timer.TIM0_ExtRes))) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 2) ) && 
	 ( $past( $fell(tc_soc_timer.TIM0_ExtCnt)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 4) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_down_count_47_intermediate_stateintermediate_2_Timer_CH0_down_count_472Timer_CH0_down_count_47;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 5) ) && 
	 (( $past( $rose(tc_soc_timer.TIM0_ExtRes)) ||  $past( $fell(tc_soc_timer.TIM0_ExtRes))) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 5) ) && 
	 ( $past( $rose(tc_soc_timer.TIM0_ExtCnt)) ||  $past( $fell(tc_soc_timer.TIM0_ExtCnt))) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out == ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out) - 1)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_dont_count_63_intermediate_stateintermediate_2_Timer_CH0_dont_count_632Timer_CH0_dont_count_63;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH0_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 5) ) && 
	 (( $past( $rose(tc_soc_timer.TIM0_ExtRes)) ||  $past( $fell(tc_soc_timer.TIM0_ExtRes))) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH0_out == 5) ) && 
	 (( $past( $rose(tc_soc_timer.TIM0_ExtCnt)) ||  $past( $fell(tc_soc_timer.TIM0_ExtCnt))) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 4) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_count_intermediate_stateintermediate_2_Timer_CH1_dont_count2Timer_CH1_dont_count;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 24) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_reset_2_maxval_intermediate_stateintermediate_2_Timer_CH1_reset_2_maxval2Timer_CH1_reset_2_maxval;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 7) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_MAXVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_no_reset_2_maxval_intermediate_stateintermediate_2_Timer_CH1_no_reset_2_maxval2Timer_CH1_no_reset_2_maxval;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out == 0) ) && 
	 (tc_soc_timer.comp_timer.comp_TimerChannel_1.comp_ACTVALCU.ExtRes_sync == 0) &&
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 24) &&
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out != 7) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out)) );
    endproperty

//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_reset_2_maxval_1_intermediate_stateintermediate_2_Timer_CH1_reset_2_maxval_12Timer_CH1_reset_2_maxval_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 3) ) && 
	 ( $past(tc_soc_timer.TIM1_ExtRes) == 1) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_MAXVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_count_1_intermediate_stateintermediate_2_Timer_CH1_dont_count_12Timer_CH1_dont_count_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 3) ) && 
	 ( $past(tc_soc_timer.TIM1_ExtRes) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 24) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_reset_2_maxval_2_intermediate_stateintermediate_2_Timer_CH1_reset_2_maxval_22Timer_CH1_reset_2_maxval_2;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 4) ) && 
	 ( $past(tc_soc_timer.TIM1_ExtRes) == 0) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_MAXVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_count_2_intermediate_stateintermediate_2_Timer_CH1_dont_count_22Timer_CH1_dont_count_2;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 4) ) && 
	 ( $past(tc_soc_timer.TIM1_ExtRes) == 1) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 24) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_count_3_intermediate_stateintermediate_2_Timer_CH1_dont_count_32Timer_CH1_dont_count_3;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 6) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 24) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_count_4_intermediate_stateintermediate_2_Timer_CH1_dont_count_42Timer_CH1_dont_count_4;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 24) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_reset_2_maxval_3_intermediate_stateintermediate_2_Timer_CH1_reset_2_maxval_32Timer_CH1_reset_2_maxval_3;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 1) ) && 
	  $past( $rose(tc_soc_timer.TIM1_ExtRes)) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_MAXVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_count_5_intermediate_stateintermediate_2_Timer_CH1_dont_count_52Timer_CH1_dont_count_5;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 1) ) && 
	 ( $past( $rose(tc_soc_timer.TIM1_ExtRes)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 24) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_reset_2_maxval_4_intermediate_stateintermediate_2_Timer_CH1_reset_2_maxval_42Timer_CH1_reset_2_maxval_4;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 2) ) && 
	  $past( $fell(tc_soc_timer.TIM1_ExtRes)) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_MAXVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_count_6_intermediate_stateintermediate_2_Timer_CH1_dont_count_62Timer_CH1_dont_count_6;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 2) ) && 
	 ( $past( $fell(tc_soc_timer.TIM1_ExtRes)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 24) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_reset_2_maxval_5_intermediate_stateintermediate_2_Timer_CH1_reset_2_maxval_52Timer_CH1_reset_2_maxval_5;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 5) ) && 
	 ( $past( $rose(tc_soc_timer.TIM1_ExtRes)) ||  $past( $fell(tc_soc_timer.TIM1_ExtRes))) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_MAXVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_count_7_intermediate_stateintermediate_2_Timer_CH1_dont_count_72Timer_CH1_dont_count_7;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 5) ) && 
	 (( $past( $rose(tc_soc_timer.TIM1_ExtRes)) ||  $past( $fell(tc_soc_timer.TIM1_ExtRes))) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 24) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_reset_2_maxval_6_intermediate_stateintermediate_2_Timer_CH1_reset_2_maxval_62Timer_CH1_reset_2_maxval_6;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 3) ) && 
	 ( $past(tc_soc_timer.TIM1_ExtRes) == 1) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_MAXVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_down_count_intermediate_stateintermediate_2_Timer_CH1_down_count2Timer_CH1_down_count;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 3) ) && 
	 ( $past(tc_soc_timer.TIM1_ExtRes) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 3) ) && 
	 ( $past(tc_soc_timer.TIM1_ExtCnt) == 1) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out == ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out) - 1)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_count_8_intermediate_stateintermediate_2_Timer_CH1_dont_count_82Timer_CH1_dont_count_8;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 3) ) && 
	 ( $past(tc_soc_timer.TIM1_ExtRes) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 3) ) && 
	 ( $past(tc_soc_timer.TIM1_ExtCnt) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 24) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_down_count_1_intermediate_stateintermediate_2_Timer_CH1_down_count_12Timer_CH1_down_count_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 3) ) && 
	 ( $past(tc_soc_timer.TIM1_ExtRes) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 4) ) && 
	 ( $past(tc_soc_timer.TIM1_ExtCnt) == 0) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out == ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out) - 1)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_count_9_intermediate_stateintermediate_2_Timer_CH1_dont_count_92Timer_CH1_dont_count_9;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 3) ) && 
	 ( $past(tc_soc_timer.TIM1_ExtRes) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 4) ) && 
	 ( $past(tc_soc_timer.TIM1_ExtCnt) == 1) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 24) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_count_10_intermediate_stateintermediate_2_Timer_CH1_dont_count_102Timer_CH1_dont_count_10;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 3) ) && 
	 ( $past(tc_soc_timer.TIM1_ExtRes) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 6) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 24) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_count_11_intermediate_stateintermediate_2_Timer_CH1_dont_count_112Timer_CH1_dont_count_11;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 3) ) && 
	 ( $past(tc_soc_timer.TIM1_ExtRes) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 7) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 24) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_down_count_2_intermediate_stateintermediate_2_Timer_CH1_down_count_22Timer_CH1_down_count_2;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 3) ) && 
	 ( $past(tc_soc_timer.TIM1_ExtRes) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 24) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out == ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out) - 1)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_down_count_3_intermediate_stateintermediate_2_Timer_CH1_down_count_32Timer_CH1_down_count_3;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 3) ) && 
	 ( $past(tc_soc_timer.TIM1_ExtRes) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 1) ) && 
	  $past( $rose(tc_soc_timer.TIM1_ExtCnt)) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out == ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out) - 1)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_count_12_intermediate_stateintermediate_2_Timer_CH1_dont_count_122Timer_CH1_dont_count_12;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 3) ) && 
	 ( $past(tc_soc_timer.TIM1_ExtRes) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 1) ) && 
	 ( $past( $rose(tc_soc_timer.TIM1_ExtCnt)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 24) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_down_count_4_intermediate_stateintermediate_2_Timer_CH1_down_count_42Timer_CH1_down_count_4;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 3) ) && 
	 ( $past(tc_soc_timer.TIM1_ExtRes) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 2) ) && 
	  $past( $fell(tc_soc_timer.TIM1_ExtCnt)) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out == ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out) - 1)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_count_13_intermediate_stateintermediate_2_Timer_CH1_dont_count_132Timer_CH1_dont_count_13;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 3) ) && 
	 ( $past(tc_soc_timer.TIM1_ExtRes) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 2) ) && 
	 ( $past( $fell(tc_soc_timer.TIM1_ExtCnt)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 24) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_down_count_5_intermediate_stateintermediate_2_Timer_CH1_down_count_52Timer_CH1_down_count_5;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 3) ) && 
	 ( $past(tc_soc_timer.TIM1_ExtRes) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 5) ) && 
	 ( $past( $rose(tc_soc_timer.TIM1_ExtCnt)) ||  $past( $fell(tc_soc_timer.TIM1_ExtCnt))) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out == ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out) - 1)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_count_14_intermediate_stateintermediate_2_Timer_CH1_dont_count_142Timer_CH1_dont_count_14;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 3) ) && 
	 ( $past(tc_soc_timer.TIM1_ExtRes) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 5) ) && 
	 (( $past( $rose(tc_soc_timer.TIM1_ExtCnt)) ||  $past( $fell(tc_soc_timer.TIM1_ExtCnt))) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 24) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_down_count_6_intermediate_stateintermediate_2_Timer_CH1_down_count_62Timer_CH1_down_count_6;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 3) ) && 
	 ( $past(tc_soc_timer.TIM1_ExtRes) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 1) ) && 
	  $past( $rose(tc_soc_timer.TIM1_ExtCnt)) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out == ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out) - 1)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_count_15_intermediate_stateintermediate_2_Timer_CH1_dont_count_152Timer_CH1_dont_count_15;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 3) ) && 
	 ( $past(tc_soc_timer.TIM1_ExtRes) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 1) ) && 
	 ( $past( $rose(tc_soc_timer.TIM1_ExtCnt)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 24) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_reset_2_maxval_7_intermediate_stateintermediate_2_Timer_CH1_reset_2_maxval_72Timer_CH1_reset_2_maxval_7;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 4) ) && 
	 ( $past(tc_soc_timer.TIM1_ExtRes) == 0) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_MAXVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_down_count_7_intermediate_stateintermediate_2_Timer_CH1_down_count_72Timer_CH1_down_count_7;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 4) ) && 
	 ( $past(tc_soc_timer.TIM1_ExtRes) == 1) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 3) ) && 
	 ( $past(tc_soc_timer.TIM1_ExtCnt) == 1) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out == ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out) - 1)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_count_16_intermediate_stateintermediate_2_Timer_CH1_dont_count_162Timer_CH1_dont_count_16;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 4) ) && 
	 ( $past(tc_soc_timer.TIM1_ExtRes) == 1) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 3) ) && 
	 ( $past(tc_soc_timer.TIM1_ExtCnt) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 24) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_down_count_8_intermediate_stateintermediate_2_Timer_CH1_down_count_82Timer_CH1_down_count_8;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 4) ) && 
	 ( $past(tc_soc_timer.TIM1_ExtRes) == 1) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 4) ) && 
	 ( $past(tc_soc_timer.TIM1_ExtCnt) == 0) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out == ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out) - 1)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_count_17_intermediate_stateintermediate_2_Timer_CH1_dont_count_172Timer_CH1_dont_count_17;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 4) ) && 
	 ( $past(tc_soc_timer.TIM1_ExtRes) == 1) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 4) ) && 
	 ( $past(tc_soc_timer.TIM1_ExtCnt) == 1) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 24) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_count_18_intermediate_stateintermediate_2_Timer_CH1_dont_count_182Timer_CH1_dont_count_18;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 4) ) && 
	 ( $past(tc_soc_timer.TIM1_ExtRes) == 1) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 6) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 24) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_count_19_intermediate_stateintermediate_2_Timer_CH1_dont_count_192Timer_CH1_dont_count_19;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 4) ) && 
	 ( $past(tc_soc_timer.TIM1_ExtRes) == 1) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 7) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 24) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_down_count_9_intermediate_stateintermediate_2_Timer_CH1_down_count_92Timer_CH1_down_count_9;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 4) ) && 
	 ( $past(tc_soc_timer.TIM1_ExtRes) == 1) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 24) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out == ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out) - 1)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_down_count_10_intermediate_stateintermediate_2_Timer_CH1_down_count_102Timer_CH1_down_count_10;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 4) ) && 
	 ( $past(tc_soc_timer.TIM1_ExtRes) == 1) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 2) ) && 
	  $past( $fell(tc_soc_timer.TIM1_ExtCnt)) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out == ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out) - 1)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_count_20_intermediate_stateintermediate_2_Timer_CH1_dont_count_202Timer_CH1_dont_count_20;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 4) ) && 
	 ( $past(tc_soc_timer.TIM1_ExtRes) == 1) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 2) ) && 
	 ( $past( $fell(tc_soc_timer.TIM1_ExtCnt)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 24) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_down_count_11_intermediate_stateintermediate_2_Timer_CH1_down_count_112Timer_CH1_down_count_11;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 4) ) && 
	 ( $past(tc_soc_timer.TIM1_ExtRes) == 1) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 5) ) && 
	 ( $past( $rose(tc_soc_timer.TIM1_ExtCnt)) ||  $past( $fell(tc_soc_timer.TIM1_ExtCnt))) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out == ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out) - 1)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_count_21_intermediate_stateintermediate_2_Timer_CH1_dont_count_212Timer_CH1_dont_count_21;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 4) ) && 
	 ( $past(tc_soc_timer.TIM1_ExtRes) == 1) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 5) ) && 
	 (( $past( $rose(tc_soc_timer.TIM1_ExtCnt)) ||  $past( $fell(tc_soc_timer.TIM1_ExtCnt))) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 24) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_down_count_12_intermediate_stateintermediate_2_Timer_CH1_down_count_122Timer_CH1_down_count_12;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 6) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 3) ) && 
	 ( $past(tc_soc_timer.TIM1_ExtCnt) == 1) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out == ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out) - 1)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_count_22_intermediate_stateintermediate_2_Timer_CH1_dont_count_222Timer_CH1_dont_count_22;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 6) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 3) ) && 
	 ( $past(tc_soc_timer.TIM1_ExtCnt) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 24) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_down_count_13_intermediate_stateintermediate_2_Timer_CH1_down_count_132Timer_CH1_down_count_13;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 6) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 4) ) && 
	 ( $past(tc_soc_timer.TIM1_ExtCnt) == 0) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out == ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out) - 1)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_count_23_intermediate_stateintermediate_2_Timer_CH1_dont_count_232Timer_CH1_dont_count_23;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 6) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 4) ) && 
	 ( $past(tc_soc_timer.TIM1_ExtCnt) == 1) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 24) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_count_24_intermediate_stateintermediate_2_Timer_CH1_dont_count_242Timer_CH1_dont_count_24;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 6) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 6) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 24) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_count_25_intermediate_stateintermediate_2_Timer_CH1_dont_count_252Timer_CH1_dont_count_25;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 6) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 7) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 24) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_down_count_14_intermediate_stateintermediate_2_Timer_CH1_down_count_142Timer_CH1_down_count_14;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 6) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 24) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out == ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out) - 1)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_down_count_15_intermediate_stateintermediate_2_Timer_CH1_down_count_152Timer_CH1_down_count_15;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 6) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 1) ) && 
	  $past( $rose(tc_soc_timer.TIM1_ExtCnt)) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out == ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out) - 1)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_count_26_intermediate_stateintermediate_2_Timer_CH1_dont_count_262Timer_CH1_dont_count_26;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 6) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 1) ) && 
	 ( $past( $rose(tc_soc_timer.TIM1_ExtCnt)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 24) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_down_count_16_intermediate_stateintermediate_2_Timer_CH1_down_count_162Timer_CH1_down_count_16;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 6) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 2) ) && 
	  $past( $fell(tc_soc_timer.TIM1_ExtCnt)) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out == ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out) - 1)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_count_27_intermediate_stateintermediate_2_Timer_CH1_dont_count_272Timer_CH1_dont_count_27;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 6) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 2) ) && 
	 ( $past( $fell(tc_soc_timer.TIM1_ExtCnt)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 24) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_down_count_17_intermediate_stateintermediate_2_Timer_CH1_down_count_172Timer_CH1_down_count_17;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 6) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 5) ) && 
	 ( $past( $rose(tc_soc_timer.TIM1_ExtCnt)) ||  $past( $fell(tc_soc_timer.TIM1_ExtCnt))) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out == ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out) - 1)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_count_28_intermediate_stateintermediate_2_Timer_CH1_dont_count_282Timer_CH1_dont_count_28;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 6) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 5) ) && 
	 (( $past( $rose(tc_soc_timer.TIM1_ExtCnt)) ||  $past( $fell(tc_soc_timer.TIM1_ExtCnt))) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 24) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_down_count_18_intermediate_stateintermediate_2_Timer_CH1_down_count_182Timer_CH1_down_count_18;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 7) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 3) ) && 
	 ( $past(tc_soc_timer.TIM1_ExtCnt) == 1) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out == ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out) - 1)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_count_29_intermediate_stateintermediate_2_Timer_CH1_dont_count_292Timer_CH1_dont_count_29;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 7) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 3) ) && 
	 ( $past(tc_soc_timer.TIM1_ExtCnt) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 24) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_down_count_19_intermediate_stateintermediate_2_Timer_CH1_down_count_192Timer_CH1_down_count_19;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 7) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 4) ) && 
	 ( $past(tc_soc_timer.TIM1_ExtCnt) == 0) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out == ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out) - 1)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_count_30_intermediate_stateintermediate_2_Timer_CH1_dont_count_302Timer_CH1_dont_count_30;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 7) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 4) ) && 
	 ( $past(tc_soc_timer.TIM1_ExtCnt) == 1) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 24) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_count_31_intermediate_stateintermediate_2_Timer_CH1_dont_count_312Timer_CH1_dont_count_31;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 7) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 6) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 24) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_count_32_intermediate_stateintermediate_2_Timer_CH1_dont_count_322Timer_CH1_dont_count_32;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 7) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 7) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 24) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_down_count_20_intermediate_stateintermediate_2_Timer_CH1_down_count_202Timer_CH1_down_count_20;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 7) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 24) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out == ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out) - 1)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_down_count_21_intermediate_stateintermediate_2_Timer_CH1_down_count_212Timer_CH1_down_count_21;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 7) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 1) ) && 
	  $past( $rose(tc_soc_timer.TIM1_ExtCnt)) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out == ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out) - 1)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_count_33_intermediate_stateintermediate_2_Timer_CH1_dont_count_332Timer_CH1_dont_count_33;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 7) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 1) ) && 
	 ( $past( $rose(tc_soc_timer.TIM1_ExtCnt)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 24) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_down_count_22_intermediate_stateintermediate_2_Timer_CH1_down_count_222Timer_CH1_down_count_22;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 7) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 2) ) && 
	  $past( $fell(tc_soc_timer.TIM1_ExtCnt)) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out == ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out) - 1)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_count_34_intermediate_stateintermediate_2_Timer_CH1_dont_count_342Timer_CH1_dont_count_34;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 7) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 2) ) && 
	 ( $past( $fell(tc_soc_timer.TIM1_ExtCnt)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 24) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_down_count_23_intermediate_stateintermediate_2_Timer_CH1_down_count_232Timer_CH1_down_count_23;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 7) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 5) ) && 
	 ( $past( $rose(tc_soc_timer.TIM1_ExtCnt)) ||  $past( $fell(tc_soc_timer.TIM1_ExtCnt))) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out == ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out) - 1)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_count_35_intermediate_stateintermediate_2_Timer_CH1_dont_count_352Timer_CH1_dont_count_35;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 7) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 5) ) && 
	 (( $past( $rose(tc_soc_timer.TIM1_ExtCnt)) ||  $past( $fell(tc_soc_timer.TIM1_ExtCnt))) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 24) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_down_count_24_intermediate_stateintermediate_2_Timer_CH1_down_count_242Timer_CH1_down_count_24;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 3) ) && 
	 ( $past(tc_soc_timer.TIM1_ExtCnt) == 1) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out == ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out) - 1)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_count_36_intermediate_stateintermediate_2_Timer_CH1_dont_count_362Timer_CH1_dont_count_36;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 3) ) && 
	 ( $past(tc_soc_timer.TIM1_ExtCnt) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 24) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_down_count_25_intermediate_stateintermediate_2_Timer_CH1_down_count_252Timer_CH1_down_count_25;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 4) ) && 
	 ( $past(tc_soc_timer.TIM1_ExtCnt) == 0) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out == ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out) - 1)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_count_37_intermediate_stateintermediate_2_Timer_CH1_dont_count_372Timer_CH1_dont_count_37;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 4) ) && 
	 ( $past(tc_soc_timer.TIM1_ExtCnt) == 1) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 24) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_count_38_intermediate_stateintermediate_2_Timer_CH1_dont_count_382Timer_CH1_dont_count_38;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 6) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 24) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_count_39_intermediate_stateintermediate_2_Timer_CH1_dont_count_392Timer_CH1_dont_count_39;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 7) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 24) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_down_count_26_intermediate_stateintermediate_2_Timer_CH1_down_count_262Timer_CH1_down_count_26;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 24) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out == ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out) - 1)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_down_count_27_intermediate_stateintermediate_2_Timer_CH1_down_count_272Timer_CH1_down_count_27;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 1) ) && 
	  $past( $rose(tc_soc_timer.TIM1_ExtCnt)) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out == ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out) - 1)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_count_40_intermediate_stateintermediate_2_Timer_CH1_dont_count_402Timer_CH1_dont_count_40;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 1) ) && 
	 ( $past( $rose(tc_soc_timer.TIM1_ExtCnt)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 24) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_down_count_28_intermediate_stateintermediate_2_Timer_CH1_down_count_282Timer_CH1_down_count_28;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 2) ) && 
	  $past( $fell(tc_soc_timer.TIM1_ExtCnt)) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out == ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out) - 1)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_count_41_intermediate_stateintermediate_2_Timer_CH1_dont_count_412Timer_CH1_dont_count_41;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 2) ) && 
	 ( $past( $fell(tc_soc_timer.TIM1_ExtCnt)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 24) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_down_count_29_intermediate_stateintermediate_2_Timer_CH1_down_count_292Timer_CH1_down_count_29;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 5) ) && 
	 ( $past( $rose(tc_soc_timer.TIM1_ExtCnt)) ||  $past( $fell(tc_soc_timer.TIM1_ExtCnt))) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out == ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out) - 1)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_count_42_intermediate_stateintermediate_2_Timer_CH1_dont_count_422Timer_CH1_dont_count_42;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 5) ) && 
	 (( $past( $rose(tc_soc_timer.TIM1_ExtCnt)) ||  $past( $fell(tc_soc_timer.TIM1_ExtCnt))) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 24) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_reset_2_maxval_8_intermediate_stateintermediate_2_Timer_CH1_reset_2_maxval_82Timer_CH1_reset_2_maxval_8;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 1) ) && 
	  $past( $rose(tc_soc_timer.TIM1_ExtRes)) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_MAXVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_down_count_30_intermediate_stateintermediate_2_Timer_CH1_down_count_302Timer_CH1_down_count_30;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 1) ) && 
	 ( $past( $rose(tc_soc_timer.TIM1_ExtRes)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 3) ) && 
	 ( $past(tc_soc_timer.TIM1_ExtCnt) == 1) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out == ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out) - 1)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_count_43_intermediate_stateintermediate_2_Timer_CH1_dont_count_432Timer_CH1_dont_count_43;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 1) ) && 
	 ( $past( $rose(tc_soc_timer.TIM1_ExtRes)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 3) ) && 
	 ( $past(tc_soc_timer.TIM1_ExtCnt) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 24) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_down_count_31_intermediate_stateintermediate_2_Timer_CH1_down_count_312Timer_CH1_down_count_31;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 1) ) && 
	 ( $past( $rose(tc_soc_timer.TIM1_ExtRes)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 4) ) && 
	 ( $past(tc_soc_timer.TIM1_ExtCnt) == 0) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out == ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out) - 1)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_count_44_intermediate_stateintermediate_2_Timer_CH1_dont_count_442Timer_CH1_dont_count_44;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 1) ) && 
	 ( $past( $rose(tc_soc_timer.TIM1_ExtRes)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 4) ) && 
	 ( $past(tc_soc_timer.TIM1_ExtCnt) == 1) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 24) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_count_45_intermediate_stateintermediate_2_Timer_CH1_dont_count_452Timer_CH1_dont_count_45;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 1) ) && 
	 ( $past( $rose(tc_soc_timer.TIM1_ExtRes)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 6) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 24) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_count_46_intermediate_stateintermediate_2_Timer_CH1_dont_count_462Timer_CH1_dont_count_46;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 1) ) && 
	 ( $past( $rose(tc_soc_timer.TIM1_ExtRes)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 7) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 24) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_down_count_32_intermediate_stateintermediate_2_Timer_CH1_down_count_322Timer_CH1_down_count_32;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 1) ) && 
	 ( $past( $rose(tc_soc_timer.TIM1_ExtRes)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 24) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out == ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out) - 1)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_down_count_33_intermediate_stateintermediate_2_Timer_CH1_down_count_332Timer_CH1_down_count_33;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 1) ) && 
	 ( $past( $rose(tc_soc_timer.TIM1_ExtRes)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 1) ) && 
	  $past( $rose(tc_soc_timer.TIM1_ExtCnt)) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out == ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out) - 1)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_count_47_intermediate_stateintermediate_2_Timer_CH1_dont_count_472Timer_CH1_dont_count_47;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 1) ) && 
	 ( $past( $rose(tc_soc_timer.TIM1_ExtRes)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 1) ) && 
	 ( $past( $rose(tc_soc_timer.TIM1_ExtCnt)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 24) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_down_count_34_intermediate_stateintermediate_2_Timer_CH1_down_count_342Timer_CH1_down_count_34;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 1) ) && 
	 ( $past( $rose(tc_soc_timer.TIM1_ExtRes)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 2) ) && 
	  $past( $fell(tc_soc_timer.TIM1_ExtCnt)) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out == ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out) - 1)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_count_48_intermediate_stateintermediate_2_Timer_CH1_dont_count_482Timer_CH1_dont_count_48;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 1) ) && 
	 ( $past( $rose(tc_soc_timer.TIM1_ExtRes)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 2) ) && 
	 ( $past( $fell(tc_soc_timer.TIM1_ExtCnt)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 24) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_down_count_35_intermediate_stateintermediate_2_Timer_CH1_down_count_352Timer_CH1_down_count_35;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 1) ) && 
	 ( $past( $rose(tc_soc_timer.TIM1_ExtRes)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 5) ) && 
	 ( $past( $rose(tc_soc_timer.TIM1_ExtCnt)) ||  $past( $fell(tc_soc_timer.TIM1_ExtCnt))) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out == ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out) - 1)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_count_49_intermediate_stateintermediate_2_Timer_CH1_dont_count_492Timer_CH1_dont_count_49;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 1) ) && 
	 ( $past( $rose(tc_soc_timer.TIM1_ExtRes)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 5) ) && 
	 (( $past( $rose(tc_soc_timer.TIM1_ExtCnt)) ||  $past( $fell(tc_soc_timer.TIM1_ExtCnt))) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 24) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_reset_2_maxval_9_intermediate_stateintermediate_2_Timer_CH1_reset_2_maxval_92Timer_CH1_reset_2_maxval_9;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 2) ) && 
	  $past( $fell(tc_soc_timer.TIM1_ExtRes)) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_MAXVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_down_count_36_intermediate_stateintermediate_2_Timer_CH1_down_count_362Timer_CH1_down_count_36;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 2) ) && 
	 ( $past( $fell(tc_soc_timer.TIM1_ExtRes)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 3) ) && 
	 ( $past(tc_soc_timer.TIM1_ExtCnt) == 1) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out == ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out) - 1)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_count_50_intermediate_stateintermediate_2_Timer_CH1_dont_count_502Timer_CH1_dont_count_50;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 2) ) && 
	 ( $past( $fell(tc_soc_timer.TIM1_ExtRes)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 3) ) && 
	 ( $past(tc_soc_timer.TIM1_ExtCnt) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 24) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_down_count_37_intermediate_stateintermediate_2_Timer_CH1_down_count_372Timer_CH1_down_count_37;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 2) ) && 
	 ( $past( $fell(tc_soc_timer.TIM1_ExtRes)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 4) ) && 
	 ( $past(tc_soc_timer.TIM1_ExtCnt) == 0) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out == ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out) - 1)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_count_51_intermediate_stateintermediate_2_Timer_CH1_dont_count_512Timer_CH1_dont_count_51;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 2) ) && 
	 ( $past( $fell(tc_soc_timer.TIM1_ExtRes)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 4) ) && 
	 ( $past(tc_soc_timer.TIM1_ExtCnt) == 1) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 24) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_count_52_intermediate_stateintermediate_2_Timer_CH1_dont_count_522Timer_CH1_dont_count_52;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 2) ) && 
	 ( $past( $fell(tc_soc_timer.TIM1_ExtRes)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 6) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 24) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_count_53_intermediate_stateintermediate_2_Timer_CH1_dont_count_532Timer_CH1_dont_count_53;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 2) ) && 
	 ( $past( $fell(tc_soc_timer.TIM1_ExtRes)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 7) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 24) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_down_count_38_intermediate_stateintermediate_2_Timer_CH1_down_count_382Timer_CH1_down_count_38;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 2) ) && 
	 ( $past( $fell(tc_soc_timer.TIM1_ExtRes)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 24) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out == ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out) - 1)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_down_count_39_intermediate_stateintermediate_2_Timer_CH1_down_count_392Timer_CH1_down_count_39;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 2) ) && 
	 ( $past( $fell(tc_soc_timer.TIM1_ExtRes)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 1) ) && 
	  $past( $rose(tc_soc_timer.TIM1_ExtCnt)) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out == ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out) - 1)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_count_54_intermediate_stateintermediate_2_Timer_CH1_dont_count_542Timer_CH1_dont_count_54;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 2) ) && 
	 ( $past( $fell(tc_soc_timer.TIM1_ExtRes)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 1) ) && 
	 ( $past( $rose(tc_soc_timer.TIM1_ExtCnt)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 24) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_down_count_40_intermediate_stateintermediate_2_Timer_CH1_down_count_402Timer_CH1_down_count_40;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 2) ) && 
	 ( $past( $fell(tc_soc_timer.TIM1_ExtRes)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 2) ) && 
	  $past( $fell(tc_soc_timer.TIM1_ExtCnt)) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out == ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out) - 1)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_count_55_intermediate_stateintermediate_2_Timer_CH1_dont_count_552Timer_CH1_dont_count_55;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 2) ) && 
	 ( $past( $fell(tc_soc_timer.TIM1_ExtRes)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 2) ) && 
	 ( $past( $fell(tc_soc_timer.TIM1_ExtCnt)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 24) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_down_count_41_intermediate_stateintermediate_2_Timer_CH1_down_count_412Timer_CH1_down_count_41;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 2) ) && 
	 ( $past( $fell(tc_soc_timer.TIM1_ExtRes)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 5) ) && 
	 ( $past( $rose(tc_soc_timer.TIM1_ExtCnt)) ||  $past( $fell(tc_soc_timer.TIM1_ExtCnt))) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out == ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out) - 1)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_count_56_intermediate_stateintermediate_2_Timer_CH1_dont_count_562Timer_CH1_dont_count_56;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 2) ) && 
	 ( $past( $fell(tc_soc_timer.TIM1_ExtRes)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 5) ) && 
	 (( $past( $rose(tc_soc_timer.TIM1_ExtCnt)) ||  $past( $fell(tc_soc_timer.TIM1_ExtCnt))) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 24) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_reset_2_maxval_10_intermediate_stateintermediate_2_Timer_CH1_reset_2_maxval_102Timer_CH1_reset_2_maxval_10;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 5) ) && 
	 ( $past( $rose(tc_soc_timer.TIM1_ExtRes)) ||  $past( $fell(tc_soc_timer.TIM1_ExtRes))) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_MAXVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_down_count_42_intermediate_stateintermediate_2_Timer_CH1_down_count_422Timer_CH1_down_count_42;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 5) ) && 
	 (( $past( $rose(tc_soc_timer.TIM1_ExtRes)) ||  $past( $fell(tc_soc_timer.TIM1_ExtRes))) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 3) ) && 
	 ( $past(tc_soc_timer.TIM1_ExtCnt) == 1) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out == ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out) - 1)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_count_57_intermediate_stateintermediate_2_Timer_CH1_dont_count_572Timer_CH1_dont_count_57;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 5) ) && 
	 (( $past( $rose(tc_soc_timer.TIM1_ExtRes)) ||  $past( $fell(tc_soc_timer.TIM1_ExtRes))) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 3) ) && 
	 ( $past(tc_soc_timer.TIM1_ExtCnt) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 24) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_down_count_43_intermediate_stateintermediate_2_Timer_CH1_down_count_432Timer_CH1_down_count_43;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 5) ) && 
	 (( $past( $rose(tc_soc_timer.TIM1_ExtRes)) ||  $past( $fell(tc_soc_timer.TIM1_ExtRes))) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 4) ) && 
	 ( $past(tc_soc_timer.TIM1_ExtCnt) == 0) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out == ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out) - 1)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_count_58_intermediate_stateintermediate_2_Timer_CH1_dont_count_582Timer_CH1_dont_count_58;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 5) ) && 
	 (( $past( $rose(tc_soc_timer.TIM1_ExtRes)) ||  $past( $fell(tc_soc_timer.TIM1_ExtRes))) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 4) ) && 
	 ( $past(tc_soc_timer.TIM1_ExtCnt) == 1) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 24) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_count_59_intermediate_stateintermediate_2_Timer_CH1_dont_count_592Timer_CH1_dont_count_59;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 5) ) && 
	 (( $past( $rose(tc_soc_timer.TIM1_ExtRes)) ||  $past( $fell(tc_soc_timer.TIM1_ExtRes))) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 6) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 24) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_count_60_intermediate_stateintermediate_2_Timer_CH1_dont_count_602Timer_CH1_dont_count_60;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 5) ) && 
	 (( $past( $rose(tc_soc_timer.TIM1_ExtRes)) ||  $past( $fell(tc_soc_timer.TIM1_ExtRes))) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 7) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 24) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_down_count_44_intermediate_stateintermediate_2_Timer_CH1_down_count_442Timer_CH1_down_count_44;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 5) ) && 
	 (( $past( $rose(tc_soc_timer.TIM1_ExtRes)) ||  $past( $fell(tc_soc_timer.TIM1_ExtRes))) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr == 24) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out == ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out) - 1)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_down_count_45_intermediate_stateintermediate_2_Timer_CH1_down_count_452Timer_CH1_down_count_45;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 5) ) && 
	 (( $past( $rose(tc_soc_timer.TIM1_ExtRes)) ||  $past( $fell(tc_soc_timer.TIM1_ExtRes))) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 1) ) && 
	  $past( $rose(tc_soc_timer.TIM1_ExtCnt)) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out == ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out) - 1)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_count_61_intermediate_stateintermediate_2_Timer_CH1_dont_count_612Timer_CH1_dont_count_61;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 5) ) && 
	 (( $past( $rose(tc_soc_timer.TIM1_ExtRes)) ||  $past( $fell(tc_soc_timer.TIM1_ExtRes))) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 1) ) && 
	 ( $past( $rose(tc_soc_timer.TIM1_ExtCnt)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 24) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_down_count_46_intermediate_stateintermediate_2_Timer_CH1_down_count_462Timer_CH1_down_count_46;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 5) ) && 
	 (( $past( $rose(tc_soc_timer.TIM1_ExtRes)) ||  $past( $fell(tc_soc_timer.TIM1_ExtRes))) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 2) ) && 
	  $past( $fell(tc_soc_timer.TIM1_ExtCnt)) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out == ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out) - 1)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_count_62_intermediate_stateintermediate_2_Timer_CH1_dont_count_622Timer_CH1_dont_count_62;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 5) ) && 
	 (( $past( $rose(tc_soc_timer.TIM1_ExtRes)) ||  $past( $fell(tc_soc_timer.TIM1_ExtRes))) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 2) ) && 
	 ( $past( $fell(tc_soc_timer.TIM1_ExtCnt)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 24) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_down_count_47_intermediate_stateintermediate_2_Timer_CH1_down_count_472Timer_CH1_down_count_47;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 5) ) && 
	 (( $past( $rose(tc_soc_timer.TIM1_ExtRes)) ||  $past( $fell(tc_soc_timer.TIM1_ExtRes))) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 5) ) && 
	 ( $past( $rose(tc_soc_timer.TIM1_ExtCnt)) ||  $past( $fell(tc_soc_timer.TIM1_ExtCnt))) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out == ( $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out) - 1)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_count_63_intermediate_stateintermediate_2_Timer_CH1_dont_count_632Timer_CH1_dont_count_63;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_TimEn_CH1_out == 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 7) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 3) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 4) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 6) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 1) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 2) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != 5) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 5) ) && 
	 (( $past( $rose(tc_soc_timer.TIM1_ExtRes)) ||  $past( $fell(tc_soc_timer.TIM1_ExtRes))) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CntIM_CH1_out == 5) ) && 
	 (( $past( $rose(tc_soc_timer.TIM1_ExtCnt)) ||  $past( $fell(tc_soc_timer.TIM1_ExtCnt))) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 24) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_capture_CCUVAL0_intermediate_stateintermediate_2_Timer_CH0_capture_CCUVAL02Timer_CH0_capture_CCUVAL0;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM0_CH0_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM0_CH0_out == 3) ) && 
	 ( $past(tc_soc_timer.TIM0_CCU0_ExtCap) == 1) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL0_CH0_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_capture_CCUVAL0_intermediate_stateintermediate_2_Timer_CH0_capture_CCUVAL02Timer_CH0_capture_CCUVAL0_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM0_CH0_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM0_CH0_out == 3) ) && 
	 ( $past(tc_soc_timer.TIM0_CCU0_ExtCap) == 1) ) )  ) 
	|->
	  ##1
	 ( $past(tc_soc_timer.TIM0_CCU0_ExtComp) == 0) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_dont_capture_CCUVAL0_intermediate_stateintermediate_2_Timer_CH0_dont_capture_CCUVAL02Timer_CH0_dont_capture_CCUVAL0;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM0_CH0_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM0_CH0_out == 3) ) && 
	 ( $past(tc_soc_timer.TIM0_CCU0_ExtCap) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 16) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL0_CH0_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL0_CH0_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_dont_capture_CCUVAL0_intermediate_stateintermediate_2_Timer_CH0_dont_capture_CCUVAL02Timer_CH0_dont_capture_CCUVAL0_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM0_CH0_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM0_CH0_out == 3) ) && 
	 ( $past(tc_soc_timer.TIM0_CCU0_ExtCap) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 16) ) )  ) 
	|->
	  ##1
	 ( $past(tc_soc_timer.TIM0_CCU0_ExtComp) == 0) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_capture_CCUVAL0_1_intermediate_stateintermediate_2_Timer_CH0_capture_CCUVAL0_12Timer_CH0_capture_CCUVAL0_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM0_CH0_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM0_CH0_out == 4) ) && 
	 ( $past(tc_soc_timer.TIM0_CCU0_ExtCap) == 0) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL0_CH0_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_capture_CCUVAL0_1_intermediate_stateintermediate_2_Timer_CH0_capture_CCUVAL0_12Timer_CH0_capture_CCUVAL0_1_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM0_CH0_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM0_CH0_out == 4) ) && 
	 ( $past(tc_soc_timer.TIM0_CCU0_ExtCap) == 0) ) )  ) 
	|->
	  ##1
	 ( $past(tc_soc_timer.TIM0_CCU0_ExtComp) == 0) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_dont_capture_CCUVAL0_1_intermediate_stateintermediate_2_Timer_CH0_dont_capture_CCUVAL0_12Timer_CH0_dont_capture_CCUVAL0_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM0_CH0_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM0_CH0_out == 4) ) && 
	 ( $past(tc_soc_timer.TIM0_CCU0_ExtCap) == 1) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 16) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL0_CH0_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL0_CH0_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_dont_capture_CCUVAL0_1_intermediate_stateintermediate_2_Timer_CH0_dont_capture_CCUVAL0_12Timer_CH0_dont_capture_CCUVAL0_1_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM0_CH0_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM0_CH0_out == 4) ) && 
	 ( $past(tc_soc_timer.TIM0_CCU0_ExtCap) == 1) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 16) ) )  ) 
	|->
	  ##1
	 ( $past(tc_soc_timer.TIM0_CCU0_ExtComp) == 0) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_dont_capture_CCUVAL0_2_intermediate_stateintermediate_2_Timer_CH0_dont_capture_CCUVAL0_22Timer_CH0_dont_capture_CCUVAL0_2;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM0_CH0_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM0_CH0_out == 6) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 16) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL0_CH0_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL0_CH0_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_dont_capture_CCUVAL0_2_intermediate_stateintermediate_2_Timer_CH0_dont_capture_CCUVAL0_22Timer_CH0_dont_capture_CCUVAL0_2_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM0_CH0_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM0_CH0_out == 6) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 16) ) )  ) 
	|->
	  ##1
	 ( $past(tc_soc_timer.TIM0_CCU0_ExtComp) == 0) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_dont_capture_CCUVAL0_3_intermediate_stateintermediate_2_Timer_CH0_dont_capture_CCUVAL0_32Timer_CH0_dont_capture_CCUVAL0_3;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM0_CH0_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM0_CH0_out == 7) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 16) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL0_CH0_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL0_CH0_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_dont_capture_CCUVAL0_3_intermediate_stateintermediate_2_Timer_CH0_dont_capture_CCUVAL0_32Timer_CH0_dont_capture_CCUVAL0_3_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM0_CH0_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM0_CH0_out == 7) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 16) ) )  ) 
	|->
	  ##1
	 ( $past(tc_soc_timer.TIM0_CCU0_ExtComp) == 0) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_dont_capture_CCUVAL0_4_intermediate_stateintermediate_2_Timer_CH0_dont_capture_CCUVAL0_42Timer_CH0_dont_capture_CCUVAL0_4;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM0_CH0_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM0_CH0_out == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 16) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL0_CH0_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL0_CH0_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_dont_capture_CCUVAL0_4_intermediate_stateintermediate_2_Timer_CH0_dont_capture_CCUVAL0_42Timer_CH0_dont_capture_CCUVAL0_4_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM0_CH0_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM0_CH0_out == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 16) ) )  ) 
	|->
	  ##1
	 ( $past(tc_soc_timer.TIM0_CCU0_ExtComp) == 0) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_capture_CCUVAL0_2_intermediate_stateintermediate_2_Timer_CH0_capture_CCUVAL0_22Timer_CH0_capture_CCUVAL0_2;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM0_CH0_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM0_CH0_out == 1) ) && 
	  $past( $rose(tc_soc_timer.TIM0_CCU0_ExtCap)) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL0_CH0_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_capture_CCUVAL0_2_intermediate_stateintermediate_2_Timer_CH0_capture_CCUVAL0_22Timer_CH0_capture_CCUVAL0_2_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM0_CH0_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM0_CH0_out == 1) ) && 
	  $past( $rose(tc_soc_timer.TIM0_CCU0_ExtCap)) ) )  ) 
	|->
	  ##1
	 ( $past(tc_soc_timer.TIM0_CCU0_ExtComp) == 0) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_dont_capture_CCUVAL0_5_intermediate_stateintermediate_2_Timer_CH0_dont_capture_CCUVAL0_52Timer_CH0_dont_capture_CCUVAL0_5;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM0_CH0_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM0_CH0_out == 1) ) && 
	 ( $past( $rose(tc_soc_timer.TIM0_CCU0_ExtCap)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 16) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL0_CH0_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL0_CH0_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_dont_capture_CCUVAL0_5_intermediate_stateintermediate_2_Timer_CH0_dont_capture_CCUVAL0_52Timer_CH0_dont_capture_CCUVAL0_5_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM0_CH0_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM0_CH0_out == 1) ) && 
	 ( $past( $rose(tc_soc_timer.TIM0_CCU0_ExtCap)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 16) ) )  ) 
	|->
	  ##1
	 ( $past(tc_soc_timer.TIM0_CCU0_ExtComp) == 0) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_capture_CCUVAL0_3_intermediate_stateintermediate_2_Timer_CH0_capture_CCUVAL0_32Timer_CH0_capture_CCUVAL0_3;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM0_CH0_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM0_CH0_out == 2) ) && 
	  $past( $fell(tc_soc_timer.TIM0_CCU0_ExtCap)) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL0_CH0_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_capture_CCUVAL0_3_intermediate_stateintermediate_2_Timer_CH0_capture_CCUVAL0_32Timer_CH0_capture_CCUVAL0_3_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM0_CH0_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM0_CH0_out == 2) ) && 
	  $past( $fell(tc_soc_timer.TIM0_CCU0_ExtCap)) ) )  ) 
	|->
	  ##1
	 ( $past(tc_soc_timer.TIM0_CCU0_ExtComp) == 0) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_dont_capture_CCUVAL0_6_intermediate_stateintermediate_2_Timer_CH0_dont_capture_CCUVAL0_62Timer_CH0_dont_capture_CCUVAL0_6;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM0_CH0_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM0_CH0_out == 2) ) && 
	 ( $past( $fell(tc_soc_timer.TIM0_CCU0_ExtCap)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 16) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL0_CH0_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL0_CH0_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_dont_capture_CCUVAL0_6_intermediate_stateintermediate_2_Timer_CH0_dont_capture_CCUVAL0_62Timer_CH0_dont_capture_CCUVAL0_6_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM0_CH0_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM0_CH0_out == 2) ) && 
	 ( $past( $fell(tc_soc_timer.TIM0_CCU0_ExtCap)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 16) ) )  ) 
	|->
	  ##1
	 ( $past(tc_soc_timer.TIM0_CCU0_ExtComp) == 0) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_capture_CCUVAL0_4_intermediate_stateintermediate_2_Timer_CH0_capture_CCUVAL0_42Timer_CH0_capture_CCUVAL0_4;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM0_CH0_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM0_CH0_out == 5) ) && 
	 ( $past( $rose(tc_soc_timer.TIM0_CCU0_ExtCap)) ||  $past( $fell(tc_soc_timer.TIM0_CCU0_ExtCap))) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL0_CH0_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_capture_CCUVAL0_4_intermediate_stateintermediate_2_Timer_CH0_capture_CCUVAL0_42Timer_CH0_capture_CCUVAL0_4_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM0_CH0_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM0_CH0_out == 5) ) && 
	 ( $past( $rose(tc_soc_timer.TIM0_CCU0_ExtCap)) ||  $past( $fell(tc_soc_timer.TIM0_CCU0_ExtCap))) ) )  ) 
	|->
	  ##1
	 ( $past(tc_soc_timer.TIM0_CCU0_ExtComp) == 0) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_dont_capture_CCUVAL0_7_intermediate_stateintermediate_2_Timer_CH0_dont_capture_CCUVAL0_72Timer_CH0_dont_capture_CCUVAL0_7;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM0_CH0_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM0_CH0_out == 5) ) && 
	 (( $past( $rose(tc_soc_timer.TIM0_CCU0_ExtCap)) ||  $past( $fell(tc_soc_timer.TIM0_CCU0_ExtCap))) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 16) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL0_CH0_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL0_CH0_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_dont_capture_CCUVAL0_7_intermediate_stateintermediate_2_Timer_CH0_dont_capture_CCUVAL0_72Timer_CH0_dont_capture_CCUVAL0_7_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM0_CH0_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM0_CH0_out == 5) ) && 
	 (( $past( $rose(tc_soc_timer.TIM0_CCU0_ExtCap)) ||  $past( $fell(tc_soc_timer.TIM0_CCU0_ExtCap))) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 16) ) )  ) 
	|->
	  ##1
	 ( $past(tc_soc_timer.TIM0_CCU0_ExtComp) == 0) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property idle_2_Timer_CH0_compare_CCM1_CCU02Timer_CH0_compare_CCM1_CCU0;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM0_CH0_out == 1) ) 
	|->
	 (tc_soc_timer.TIM0_CCU0_ExtComp == (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out < tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL0_CH0_flipflop_out)));
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property idle_2_Timer_CH0_compare_CCM2_CCU02Timer_CH0_compare_CCM2_CCU0;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM0_CH0_out == 2) ) 
	|->
	 (tc_soc_timer.TIM0_CCU0_ExtComp == (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out <= tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL0_CH0_flipflop_out)));
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property idle_2_Timer_CH0_compare_CCM3_CCU02Timer_CH0_compare_CCM3_CCU0;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM0_CH0_out == 3) ) 
	|->
	 (tc_soc_timer.TIM0_CCU0_ExtComp == (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out > tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL0_CH0_flipflop_out)));
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property idle_2_Timer_CH0_compare_CCM4_CCU02Timer_CH0_compare_CCM4_CCU0;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM0_CH0_out == 4) ) 
	|->
	 (tc_soc_timer.TIM0_CCU0_ExtComp == (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out >= tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL0_CH0_flipflop_out)));
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property idle_2_Timer_CH0_compare_CCM5_CCU02Timer_CH0_compare_CCM5_CCU0;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM0_CH0_out == 5) ) 
	|->
	 (tc_soc_timer.TIM0_CCU0_ExtComp == (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out == tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL0_CH0_flipflop_out)));
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property idle_2_Timer_CH0_compare_CCM6_CCU02Timer_CH0_compare_CCM6_CCU0;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM0_CH0_out == 6) ) 
	|->
	 (tc_soc_timer.TIM0_CCU0_ExtComp == (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out != tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL0_CH0_flipflop_out)));
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property idle_2_Timer_CH0_disabled_compare_CCM7_CCU02Timer_CH0_disabled_compare_CCM7_CCU0;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM0_CH0_out == 7) ) 
	|->
	 (tc_soc_timer.TIM0_CCU0_ExtComp == 0));
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_capture_CCUVAL0_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL02Timer_CH1_capture_CCUVAL0;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM0_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM0_CH1_out == 3) ) && 
	 ( $past(tc_soc_timer.TIM1_CCU0_ExtCap) == 1) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL0_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_capture_CCUVAL0_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL02Timer_CH1_capture_CCUVAL0_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM0_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM0_CH1_out == 3) ) && 
	 ( $past(tc_soc_timer.TIM1_CCU0_ExtCap) == 1) ) )  ) 
	|->
	  ##1
	 ( $past(tc_soc_timer.TIM1_CCU0_ExtComp) == 0) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_capture_CCUVAL0_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL02Timer_CH1_dont_capture_CCUVAL0;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM0_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM0_CH1_out == 3) ) && 
	 ( $past(tc_soc_timer.TIM1_CCU0_ExtCap) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 36) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL0_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL0_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_capture_CCUVAL0_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL02Timer_CH1_dont_capture_CCUVAL0_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM0_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM0_CH1_out == 3) ) && 
	 ( $past(tc_soc_timer.TIM1_CCU0_ExtCap) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 36) ) )  ) 
	|->
	  ##1
	 ( $past(tc_soc_timer.TIM1_CCU0_ExtComp) == 0) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_capture_CCUVAL0_1_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL0_12Timer_CH1_capture_CCUVAL0_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM0_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM0_CH1_out == 4) ) && 
	 ( $past(tc_soc_timer.TIM1_CCU0_ExtCap) == 0) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL0_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_capture_CCUVAL0_1_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL0_12Timer_CH1_capture_CCUVAL0_1_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM0_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM0_CH1_out == 4) ) && 
	 ( $past(tc_soc_timer.TIM1_CCU0_ExtCap) == 0) ) )  ) 
	|->
	  ##1
	 ( $past(tc_soc_timer.TIM1_CCU0_ExtComp) == 0) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_capture_CCUVAL0_1_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL0_12Timer_CH1_dont_capture_CCUVAL0_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM0_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM0_CH1_out == 4) ) && 
	 ( $past(tc_soc_timer.TIM1_CCU0_ExtCap) == 1) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 36) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL0_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL0_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_capture_CCUVAL0_1_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL0_12Timer_CH1_dont_capture_CCUVAL0_1_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM0_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM0_CH1_out == 4) ) && 
	 ( $past(tc_soc_timer.TIM1_CCU0_ExtCap) == 1) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 36) ) )  ) 
	|->
	  ##1
	 ( $past(tc_soc_timer.TIM1_CCU0_ExtComp) == 0) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_capture_CCUVAL0_2_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL0_22Timer_CH1_dont_capture_CCUVAL0_2;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM0_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM0_CH1_out == 6) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 36) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL0_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL0_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_capture_CCUVAL0_2_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL0_22Timer_CH1_dont_capture_CCUVAL0_2_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM0_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM0_CH1_out == 6) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 36) ) )  ) 
	|->
	  ##1
	 ( $past(tc_soc_timer.TIM1_CCU0_ExtComp) == 0) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_capture_CCUVAL0_3_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL0_32Timer_CH1_dont_capture_CCUVAL0_3;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM0_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM0_CH1_out == 7) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 36) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL0_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL0_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_capture_CCUVAL0_3_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL0_32Timer_CH1_dont_capture_CCUVAL0_3_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM0_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM0_CH1_out == 7) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 36) ) )  ) 
	|->
	  ##1
	 ( $past(tc_soc_timer.TIM1_CCU0_ExtComp) == 0) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_capture_CCUVAL0_4_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL0_42Timer_CH1_dont_capture_CCUVAL0_4;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM0_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM0_CH1_out == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 36) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL0_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL0_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_capture_CCUVAL0_4_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL0_42Timer_CH1_dont_capture_CCUVAL0_4_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM0_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM0_CH1_out == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 36) ) )  ) 
	|->
	  ##1
	 ( $past(tc_soc_timer.TIM1_CCU0_ExtComp) == 0) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_capture_CCUVAL0_2_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL0_22Timer_CH1_capture_CCUVAL0_2;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM0_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM0_CH1_out == 1) ) && 
	  $past( $rose(tc_soc_timer.TIM1_CCU0_ExtCap)) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL0_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_capture_CCUVAL0_2_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL0_22Timer_CH1_capture_CCUVAL0_2_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM0_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM0_CH1_out == 1) ) && 
	  $past( $rose(tc_soc_timer.TIM1_CCU0_ExtCap)) ) )  ) 
	|->
	  ##1
	 ( $past(tc_soc_timer.TIM1_CCU0_ExtComp) == 0) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_capture_CCUVAL0_5_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL0_52Timer_CH1_dont_capture_CCUVAL0_5;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM0_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM0_CH1_out == 1) ) && 
	 ( $past( $rose(tc_soc_timer.TIM1_CCU0_ExtCap)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 36) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL0_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL0_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_capture_CCUVAL0_5_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL0_52Timer_CH1_dont_capture_CCUVAL0_5_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM0_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM0_CH1_out == 1) ) && 
	 ( $past( $rose(tc_soc_timer.TIM1_CCU0_ExtCap)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 36) ) )  ) 
	|->
	  ##1
	 ( $past(tc_soc_timer.TIM1_CCU0_ExtComp) == 0) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_capture_CCUVAL0_3_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL0_32Timer_CH1_capture_CCUVAL0_3;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM0_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM0_CH1_out == 2) ) && 
	  $past( $fell(tc_soc_timer.TIM1_CCU0_ExtCap)) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL0_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_capture_CCUVAL0_3_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL0_32Timer_CH1_capture_CCUVAL0_3_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM0_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM0_CH1_out == 2) ) && 
	  $past( $fell(tc_soc_timer.TIM1_CCU0_ExtCap)) ) )  ) 
	|->
	  ##1
	 ( $past(tc_soc_timer.TIM1_CCU0_ExtComp) == 0) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_capture_CCUVAL0_6_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL0_62Timer_CH1_dont_capture_CCUVAL0_6;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM0_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM0_CH1_out == 2) ) && 
	 ( $past( $fell(tc_soc_timer.TIM1_CCU0_ExtCap)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 36) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL0_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL0_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_capture_CCUVAL0_6_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL0_62Timer_CH1_dont_capture_CCUVAL0_6_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM0_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM0_CH1_out == 2) ) && 
	 ( $past( $fell(tc_soc_timer.TIM1_CCU0_ExtCap)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 36) ) )  ) 
	|->
	  ##1
	 ( $past(tc_soc_timer.TIM1_CCU0_ExtComp) == 0) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_capture_CCUVAL0_4_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL0_42Timer_CH1_capture_CCUVAL0_4;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM0_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM0_CH1_out == 5) ) && 
	 ( $past( $rose(tc_soc_timer.TIM1_CCU0_ExtCap)) ||  $past( $fell(tc_soc_timer.TIM1_CCU0_ExtCap))) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL0_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_capture_CCUVAL0_4_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL0_42Timer_CH1_capture_CCUVAL0_4_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM0_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM0_CH1_out == 5) ) && 
	 ( $past( $rose(tc_soc_timer.TIM1_CCU0_ExtCap)) ||  $past( $fell(tc_soc_timer.TIM1_CCU0_ExtCap))) ) )  ) 
	|->
	  ##1
	 ( $past(tc_soc_timer.TIM1_CCU0_ExtComp) == 0) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_capture_CCUVAL0_7_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL0_72Timer_CH1_dont_capture_CCUVAL0_7;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM0_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM0_CH1_out == 5) ) && 
	 (( $past( $rose(tc_soc_timer.TIM1_CCU0_ExtCap)) ||  $past( $fell(tc_soc_timer.TIM1_CCU0_ExtCap))) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 36) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL0_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL0_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_capture_CCUVAL0_7_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL0_72Timer_CH1_dont_capture_CCUVAL0_7_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM0_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM0_CH1_out == 5) ) && 
	 (( $past( $rose(tc_soc_timer.TIM1_CCU0_ExtCap)) ||  $past( $fell(tc_soc_timer.TIM1_CCU0_ExtCap))) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 36) ) )  ) 
	|->
	  ##1
	 ( $past(tc_soc_timer.TIM1_CCU0_ExtComp) == 0) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property idle_2_Timer_CH1_compare_CCM1_CCU02Timer_CH1_compare_CCM1_CCU0;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM0_CH1_out == 1) ) 
	|->
	 (tc_soc_timer.TIM1_CCU0_ExtComp == (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out < tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL0_CH1_flipflop_out)));
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property idle_2_Timer_CH1_compare_CCM2_CCU02Timer_CH1_compare_CCM2_CCU0;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM0_CH1_out == 2) ) 
	|->
	 (tc_soc_timer.TIM1_CCU0_ExtComp == (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out <= tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL0_CH1_flipflop_out)));
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property idle_2_Timer_CH1_compare_CCM3_CCU02Timer_CH1_compare_CCM3_CCU0;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM0_CH1_out == 3) ) 
	|->
	 (tc_soc_timer.TIM1_CCU0_ExtComp == (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out > tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL0_CH1_flipflop_out)));
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property idle_2_Timer_CH1_compare_CCM4_CCU02Timer_CH1_compare_CCM4_CCU0;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM0_CH1_out == 4) ) 
	|->
	 (tc_soc_timer.TIM1_CCU0_ExtComp == (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out >= tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL0_CH1_flipflop_out)));
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property idle_2_Timer_CH1_compare_CCM5_CCU02Timer_CH1_compare_CCM5_CCU0;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM0_CH1_out == 5) ) 
	|->
	 (tc_soc_timer.TIM1_CCU0_ExtComp == (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out == tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL0_CH1_flipflop_out)));
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property idle_2_Timer_CH1_compare_CCM6_CCU02Timer_CH1_compare_CCM6_CCU0;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM0_CH1_out == 6) ) 
	|->
	 (tc_soc_timer.TIM1_CCU0_ExtComp == (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL0_CH1_flipflop_out)));
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property idle_2_Timer_CH1_disabled_compare_CCM7_CCU02Timer_CH1_disabled_compare_CCM7_CCU0;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM0_CH1_out == 7) ) 
	|->
	 (tc_soc_timer.TIM1_CCU0_ExtComp == 0));
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_capture_CCUVAL1_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL12Timer_CH1_capture_CCUVAL1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM1_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM1_CH1_out == 3) ) && 
	 ( $past(tc_soc_timer.TIM1_CCU1_ExtCap) == 1) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL1_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_capture_CCUVAL1_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL12Timer_CH1_capture_CCUVAL1_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM1_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM1_CH1_out == 3) ) && 
	 ( $past(tc_soc_timer.TIM1_CCU1_ExtCap) == 1) ) )  ) 
	|->
	  ##1
	 ( $past(tc_soc_timer.TIM1_CCU1_ExtComp) == 0) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_capture_CCUVAL1_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL12Timer_CH1_dont_capture_CCUVAL1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM1_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM1_CH1_out == 3) ) && 
	 ( $past(tc_soc_timer.TIM1_CCU1_ExtCap) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 44) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL1_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL1_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_capture_CCUVAL1_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL12Timer_CH1_dont_capture_CCUVAL1_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM1_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM1_CH1_out == 3) ) && 
	 ( $past(tc_soc_timer.TIM1_CCU1_ExtCap) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 44) ) )  ) 
	|->
	  ##1
	 ( $past(tc_soc_timer.TIM1_CCU1_ExtComp) == 0) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_capture_CCUVAL1_1_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL1_12Timer_CH1_capture_CCUVAL1_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM1_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM1_CH1_out == 4) ) && 
	 ( $past(tc_soc_timer.TIM1_CCU1_ExtCap) == 0) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL1_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_capture_CCUVAL1_1_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL1_12Timer_CH1_capture_CCUVAL1_1_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM1_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM1_CH1_out == 4) ) && 
	 ( $past(tc_soc_timer.TIM1_CCU1_ExtCap) == 0) ) )  ) 
	|->
	  ##1
	 ( $past(tc_soc_timer.TIM1_CCU1_ExtComp) == 0) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_capture_CCUVAL1_1_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL1_12Timer_CH1_dont_capture_CCUVAL1_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM1_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM1_CH1_out == 4) ) && 
	 ( $past(tc_soc_timer.TIM1_CCU1_ExtCap) == 1) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 44) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL1_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL1_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_capture_CCUVAL1_1_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL1_12Timer_CH1_dont_capture_CCUVAL1_1_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM1_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM1_CH1_out == 4) ) && 
	 ( $past(tc_soc_timer.TIM1_CCU1_ExtCap) == 1) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 44) ) )  ) 
	|->
	  ##1
	 ( $past(tc_soc_timer.TIM1_CCU1_ExtComp) == 0) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_capture_CCUVAL1_2_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL1_22Timer_CH1_dont_capture_CCUVAL1_2;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM1_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM1_CH1_out == 6) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 44) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL1_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL1_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_capture_CCUVAL1_2_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL1_22Timer_CH1_dont_capture_CCUVAL1_2_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM1_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM1_CH1_out == 6) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 44) ) )  ) 
	|->
	  ##1
	 ( $past(tc_soc_timer.TIM1_CCU1_ExtComp) == 0) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_capture_CCUVAL1_3_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL1_32Timer_CH1_dont_capture_CCUVAL1_3;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM1_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM1_CH1_out == 7) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 44) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL1_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL1_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_capture_CCUVAL1_3_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL1_32Timer_CH1_dont_capture_CCUVAL1_3_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM1_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM1_CH1_out == 7) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 44) ) )  ) 
	|->
	  ##1
	 ( $past(tc_soc_timer.TIM1_CCU1_ExtComp) == 0) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_capture_CCUVAL1_4_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL1_42Timer_CH1_dont_capture_CCUVAL1_4;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM1_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM1_CH1_out == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 44) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL1_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL1_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_capture_CCUVAL1_4_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL1_42Timer_CH1_dont_capture_CCUVAL1_4_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM1_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM1_CH1_out == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 44) ) )  ) 
	|->
	  ##1
	 ( $past(tc_soc_timer.TIM1_CCU1_ExtComp) == 0) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_capture_CCUVAL1_2_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL1_22Timer_CH1_capture_CCUVAL1_2;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM1_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM1_CH1_out == 1) ) && 
	  $past( $rose(tc_soc_timer.TIM1_CCU1_ExtCap)) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL1_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_capture_CCUVAL1_2_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL1_22Timer_CH1_capture_CCUVAL1_2_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM1_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM1_CH1_out == 1) ) && 
	  $past( $rose(tc_soc_timer.TIM1_CCU1_ExtCap)) ) )  ) 
	|->
	  ##1
	 ( $past(tc_soc_timer.TIM1_CCU1_ExtComp) == 0) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_capture_CCUVAL1_5_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL1_52Timer_CH1_dont_capture_CCUVAL1_5;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM1_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM1_CH1_out == 1) ) && 
	 ( $past( $rose(tc_soc_timer.TIM1_CCU1_ExtCap)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 44) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL1_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL1_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_capture_CCUVAL1_5_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL1_52Timer_CH1_dont_capture_CCUVAL1_5_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM1_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM1_CH1_out == 1) ) && 
	 ( $past( $rose(tc_soc_timer.TIM1_CCU1_ExtCap)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 44) ) )  ) 
	|->
	  ##1
	 ( $past(tc_soc_timer.TIM1_CCU1_ExtComp) == 0) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_capture_CCUVAL1_3_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL1_32Timer_CH1_capture_CCUVAL1_3;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM1_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM1_CH1_out == 2) ) && 
	  $past( $fell(tc_soc_timer.TIM1_CCU1_ExtCap)) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL1_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_capture_CCUVAL1_3_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL1_32Timer_CH1_capture_CCUVAL1_3_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM1_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM1_CH1_out == 2) ) && 
	  $past( $fell(tc_soc_timer.TIM1_CCU1_ExtCap)) ) )  ) 
	|->
	  ##1
	 ( $past(tc_soc_timer.TIM1_CCU1_ExtComp) == 0) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_capture_CCUVAL1_6_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL1_62Timer_CH1_dont_capture_CCUVAL1_6;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM1_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM1_CH1_out == 2) ) && 
	 ( $past( $fell(tc_soc_timer.TIM1_CCU1_ExtCap)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 44) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL1_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL1_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_capture_CCUVAL1_6_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL1_62Timer_CH1_dont_capture_CCUVAL1_6_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM1_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM1_CH1_out == 2) ) && 
	 ( $past( $fell(tc_soc_timer.TIM1_CCU1_ExtCap)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 44) ) )  ) 
	|->
	  ##1
	 ( $past(tc_soc_timer.TIM1_CCU1_ExtComp) == 0) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_capture_CCUVAL1_4_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL1_42Timer_CH1_capture_CCUVAL1_4;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM1_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM1_CH1_out == 5) ) && 
	 ( $past( $rose(tc_soc_timer.TIM1_CCU1_ExtCap)) ||  $past( $fell(tc_soc_timer.TIM1_CCU1_ExtCap))) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL1_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_capture_CCUVAL1_4_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL1_42Timer_CH1_capture_CCUVAL1_4_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM1_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM1_CH1_out == 5) ) && 
	 ( $past( $rose(tc_soc_timer.TIM1_CCU1_ExtCap)) ||  $past( $fell(tc_soc_timer.TIM1_CCU1_ExtCap))) ) )  ) 
	|->
	  ##1
	 ( $past(tc_soc_timer.TIM1_CCU1_ExtComp) == 0) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_capture_CCUVAL1_7_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL1_72Timer_CH1_dont_capture_CCUVAL1_7;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM1_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM1_CH1_out == 5) ) && 
	 (( $past( $rose(tc_soc_timer.TIM1_CCU1_ExtCap)) ||  $past( $fell(tc_soc_timer.TIM1_CCU1_ExtCap))) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 44) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL1_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL1_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_capture_CCUVAL1_7_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL1_72Timer_CH1_dont_capture_CCUVAL1_7_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM1_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM1_CH1_out == 5) ) && 
	 (( $past( $rose(tc_soc_timer.TIM1_CCU1_ExtCap)) ||  $past( $fell(tc_soc_timer.TIM1_CCU1_ExtCap))) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 44) ) )  ) 
	|->
	  ##1
	 ( $past(tc_soc_timer.TIM1_CCU1_ExtComp) == 0) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property idle_2_Timer_CH1_compare_CCM1_CCU12Timer_CH1_compare_CCM1_CCU1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM1_CH1_out == 1) ) 
	|->
	 (tc_soc_timer.TIM1_CCU1_ExtComp == (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out < tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL1_CH1_flipflop_out)));
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property idle_2_Timer_CH1_compare_CCM2_CCU12Timer_CH1_compare_CCM2_CCU1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM1_CH1_out == 2) ) 
	|->
	 (tc_soc_timer.TIM1_CCU1_ExtComp == (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out <= tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL1_CH1_flipflop_out)));
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property idle_2_Timer_CH1_compare_CCM3_CCU12Timer_CH1_compare_CCM3_CCU1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM1_CH1_out == 3) ) 
	|->
	 (tc_soc_timer.TIM1_CCU1_ExtComp == (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out > tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL1_CH1_flipflop_out)));
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property idle_2_Timer_CH1_compare_CCM4_CCU12Timer_CH1_compare_CCM4_CCU1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM1_CH1_out == 4) ) 
	|->
	 (tc_soc_timer.TIM1_CCU1_ExtComp == (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out >= tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL1_CH1_flipflop_out)));
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property idle_2_Timer_CH1_compare_CCM5_CCU12Timer_CH1_compare_CCM5_CCU1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM1_CH1_out == 5) ) 
	|->
	 (tc_soc_timer.TIM1_CCU1_ExtComp == (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out == tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL1_CH1_flipflop_out)));
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property idle_2_Timer_CH1_compare_CCM6_CCU12Timer_CH1_compare_CCM6_CCU1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM1_CH1_out == 6) ) 
	|->
	 (tc_soc_timer.TIM1_CCU1_ExtComp == (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL1_CH1_flipflop_out)));
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property idle_2_Timer_CH1_disabled_compare_CCM7_CCU12Timer_CH1_disabled_compare_CCM7_CCU1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM1_CH1_out == 7) ) 
	|->
	 (tc_soc_timer.TIM1_CCU1_ExtComp == 0));
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_capture_CCUVAL2_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL22Timer_CH1_capture_CCUVAL2;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM2_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM2_CH1_out == 3) ) && 
	 ( $past(tc_soc_timer.TIM1_CCU2_ExtCap) == 1) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL2_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_capture_CCUVAL2_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL22Timer_CH1_capture_CCUVAL2_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM2_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM2_CH1_out == 3) ) && 
	 ( $past(tc_soc_timer.TIM1_CCU2_ExtCap) == 1) ) )  ) 
	|->
	  ##1
	 ( $past(tc_soc_timer.TIM1_CCU2_ExtComp) == 0) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_capture_CCUVAL2_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL22Timer_CH1_dont_capture_CCUVAL2;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM2_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM2_CH1_out == 3) ) && 
	 ( $past(tc_soc_timer.TIM1_CCU2_ExtCap) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 52) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL2_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL2_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_capture_CCUVAL2_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL22Timer_CH1_dont_capture_CCUVAL2_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM2_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM2_CH1_out == 3) ) && 
	 ( $past(tc_soc_timer.TIM1_CCU2_ExtCap) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 52) ) )  ) 
	|->
	  ##1
	 ( $past(tc_soc_timer.TIM1_CCU2_ExtComp) == 0) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_capture_CCUVAL2_1_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL2_12Timer_CH1_capture_CCUVAL2_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM2_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM2_CH1_out == 4) ) && 
	 ( $past(tc_soc_timer.TIM1_CCU2_ExtCap) == 0) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL2_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_capture_CCUVAL2_1_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL2_12Timer_CH1_capture_CCUVAL2_1_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM2_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM2_CH1_out == 4) ) && 
	 ( $past(tc_soc_timer.TIM1_CCU2_ExtCap) == 0) ) )  ) 
	|->
	  ##1
	 ( $past(tc_soc_timer.TIM1_CCU2_ExtComp) == 0) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_capture_CCUVAL2_1_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL2_12Timer_CH1_dont_capture_CCUVAL2_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM2_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM2_CH1_out == 4) ) && 
	 ( $past(tc_soc_timer.TIM1_CCU2_ExtCap) == 1) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 52) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL2_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL2_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_capture_CCUVAL2_1_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL2_12Timer_CH1_dont_capture_CCUVAL2_1_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM2_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM2_CH1_out == 4) ) && 
	 ( $past(tc_soc_timer.TIM1_CCU2_ExtCap) == 1) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 52) ) )  ) 
	|->
	  ##1
	 ( $past(tc_soc_timer.TIM1_CCU2_ExtComp) == 0) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_capture_CCUVAL2_2_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL2_22Timer_CH1_dont_capture_CCUVAL2_2;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM2_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM2_CH1_out == 6) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 52) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL2_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL2_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_capture_CCUVAL2_2_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL2_22Timer_CH1_dont_capture_CCUVAL2_2_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM2_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM2_CH1_out == 6) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 52) ) )  ) 
	|->
	  ##1
	 ( $past(tc_soc_timer.TIM1_CCU2_ExtComp) == 0) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_capture_CCUVAL2_3_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL2_32Timer_CH1_dont_capture_CCUVAL2_3;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM2_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM2_CH1_out == 7) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 52) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL2_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL2_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_capture_CCUVAL2_3_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL2_32Timer_CH1_dont_capture_CCUVAL2_3_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM2_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM2_CH1_out == 7) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 52) ) )  ) 
	|->
	  ##1
	 ( $past(tc_soc_timer.TIM1_CCU2_ExtComp) == 0) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_capture_CCUVAL2_4_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL2_42Timer_CH1_dont_capture_CCUVAL2_4;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM2_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM2_CH1_out == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 52) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL2_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL2_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_capture_CCUVAL2_4_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL2_42Timer_CH1_dont_capture_CCUVAL2_4_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM2_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM2_CH1_out == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 52) ) )  ) 
	|->
	  ##1
	 ( $past(tc_soc_timer.TIM1_CCU2_ExtComp) == 0) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_capture_CCUVAL2_2_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL2_22Timer_CH1_capture_CCUVAL2_2;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM2_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM2_CH1_out == 1) ) && 
	  $past( $rose(tc_soc_timer.TIM1_CCU2_ExtCap)) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL2_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_capture_CCUVAL2_2_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL2_22Timer_CH1_capture_CCUVAL2_2_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM2_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM2_CH1_out == 1) ) && 
	  $past( $rose(tc_soc_timer.TIM1_CCU2_ExtCap)) ) )  ) 
	|->
	  ##1
	 ( $past(tc_soc_timer.TIM1_CCU2_ExtComp) == 0) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_capture_CCUVAL2_5_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL2_52Timer_CH1_dont_capture_CCUVAL2_5;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM2_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM2_CH1_out == 1) ) && 
	 ( $past( $rose(tc_soc_timer.TIM1_CCU2_ExtCap)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 52) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL2_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL2_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_capture_CCUVAL2_5_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL2_52Timer_CH1_dont_capture_CCUVAL2_5_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM2_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM2_CH1_out == 1) ) && 
	 ( $past( $rose(tc_soc_timer.TIM1_CCU2_ExtCap)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 52) ) )  ) 
	|->
	  ##1
	 ( $past(tc_soc_timer.TIM1_CCU2_ExtComp) == 0) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_capture_CCUVAL2_3_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL2_32Timer_CH1_capture_CCUVAL2_3;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM2_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM2_CH1_out == 2) ) && 
	  $past( $fell(tc_soc_timer.TIM1_CCU2_ExtCap)) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL2_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_capture_CCUVAL2_3_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL2_32Timer_CH1_capture_CCUVAL2_3_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM2_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM2_CH1_out == 2) ) && 
	  $past( $fell(tc_soc_timer.TIM1_CCU2_ExtCap)) ) )  ) 
	|->
	  ##1
	 ( $past(tc_soc_timer.TIM1_CCU2_ExtComp) == 0) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_capture_CCUVAL2_6_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL2_62Timer_CH1_dont_capture_CCUVAL2_6;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM2_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM2_CH1_out == 2) ) && 
	 ( $past( $fell(tc_soc_timer.TIM1_CCU2_ExtCap)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 52) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL2_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL2_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_capture_CCUVAL2_6_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL2_62Timer_CH1_dont_capture_CCUVAL2_6_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM2_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM2_CH1_out == 2) ) && 
	 ( $past( $fell(tc_soc_timer.TIM1_CCU2_ExtCap)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 52) ) )  ) 
	|->
	  ##1
	 ( $past(tc_soc_timer.TIM1_CCU2_ExtComp) == 0) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_capture_CCUVAL2_4_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL2_42Timer_CH1_capture_CCUVAL2_4;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM2_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM2_CH1_out == 5) ) && 
	 ( $past( $rose(tc_soc_timer.TIM1_CCU2_ExtCap)) ||  $past( $fell(tc_soc_timer.TIM1_CCU2_ExtCap))) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL2_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_capture_CCUVAL2_4_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL2_42Timer_CH1_capture_CCUVAL2_4_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM2_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM2_CH1_out == 5) ) && 
	 ( $past( $rose(tc_soc_timer.TIM1_CCU2_ExtCap)) ||  $past( $fell(tc_soc_timer.TIM1_CCU2_ExtCap))) ) )  ) 
	|->
	  ##1
	 ( $past(tc_soc_timer.TIM1_CCU2_ExtComp) == 0) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_capture_CCUVAL2_7_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL2_72Timer_CH1_dont_capture_CCUVAL2_7;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM2_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM2_CH1_out == 5) ) && 
	 (( $past( $rose(tc_soc_timer.TIM1_CCU2_ExtCap)) ||  $past( $fell(tc_soc_timer.TIM1_CCU2_ExtCap))) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 52) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL2_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL2_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_capture_CCUVAL2_7_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL2_72Timer_CH1_dont_capture_CCUVAL2_7_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM2_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM2_CH1_out == 5) ) && 
	 (( $past( $rose(tc_soc_timer.TIM1_CCU2_ExtCap)) ||  $past( $fell(tc_soc_timer.TIM1_CCU2_ExtCap))) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 52) ) )  ) 
	|->
	  ##1
	 ( $past(tc_soc_timer.TIM1_CCU2_ExtComp) == 0) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property idle_2_Timer_CH1_compare_CCM1_CCU22Timer_CH1_compare_CCM1_CCU2;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM2_CH1_out == 1) ) 
	|->
	 (tc_soc_timer.TIM1_CCU2_ExtComp == (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out < tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL2_CH1_flipflop_out)));
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property idle_2_Timer_CH1_compare_CCM2_CCU22Timer_CH1_compare_CCM2_CCU2;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM2_CH1_out == 2) ) 
	|->
	 (tc_soc_timer.TIM1_CCU2_ExtComp == (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out <= tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL2_CH1_flipflop_out)));
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property idle_2_Timer_CH1_compare_CCM3_CCU22Timer_CH1_compare_CCM3_CCU2;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM2_CH1_out == 3) ) 
	|->
	 (tc_soc_timer.TIM1_CCU2_ExtComp == (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out > tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL2_CH1_flipflop_out)));
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property idle_2_Timer_CH1_compare_CCM4_CCU22Timer_CH1_compare_CCM4_CCU2;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM2_CH1_out == 4) ) 
	|->
	 (tc_soc_timer.TIM1_CCU2_ExtComp == (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out >= tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL2_CH1_flipflop_out)));
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property idle_2_Timer_CH1_compare_CCM5_CCU22Timer_CH1_compare_CCM5_CCU2;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM2_CH1_out == 5) ) 
	|->
	 (tc_soc_timer.TIM1_CCU2_ExtComp == (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out == tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL2_CH1_flipflop_out)));
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property idle_2_Timer_CH1_compare_CCM6_CCU22Timer_CH1_compare_CCM6_CCU2;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM2_CH1_out == 6) ) 
	|->
	 (tc_soc_timer.TIM1_CCU2_ExtComp == (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL2_CH1_flipflop_out)));
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property idle_2_Timer_CH1_disabled_compare_CCM7_CCU22Timer_CH1_disabled_compare_CCM7_CCU2;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM2_CH1_out == 7) ) 
	|->
	 (tc_soc_timer.TIM1_CCU2_ExtComp == 0));
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_capture_CCUVAL3_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL32Timer_CH1_capture_CCUVAL3;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM3_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM3_CH1_out == 3) ) && 
	 ( $past(tc_soc_timer.TIM1_CCU3_ExtCap) == 1) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL3_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_capture_CCUVAL3_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL32Timer_CH1_capture_CCUVAL3_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM3_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM3_CH1_out == 3) ) && 
	 ( $past(tc_soc_timer.TIM1_CCU3_ExtCap) == 1) ) )  ) 
	|->
	  ##1
	 ( $past(tc_soc_timer.TIM1_CCU3_ExtComp) == 0) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_capture_CCUVAL3_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL32Timer_CH1_dont_capture_CCUVAL3;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM3_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM3_CH1_out == 3) ) && 
	 ( $past(tc_soc_timer.TIM1_CCU3_ExtCap) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 60) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL3_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL3_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_capture_CCUVAL3_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL32Timer_CH1_dont_capture_CCUVAL3_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM3_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM3_CH1_out == 3) ) && 
	 ( $past(tc_soc_timer.TIM1_CCU3_ExtCap) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 60) ) )  ) 
	|->
	  ##1
	 ( $past(tc_soc_timer.TIM1_CCU3_ExtComp) == 0) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_capture_CCUVAL3_1_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL3_12Timer_CH1_capture_CCUVAL3_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM3_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM3_CH1_out == 4) ) && 
	 ( $past(tc_soc_timer.TIM1_CCU3_ExtCap) == 0) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL3_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_capture_CCUVAL3_1_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL3_12Timer_CH1_capture_CCUVAL3_1_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM3_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM3_CH1_out == 4) ) && 
	 ( $past(tc_soc_timer.TIM1_CCU3_ExtCap) == 0) ) )  ) 
	|->
	  ##1
	 ( $past(tc_soc_timer.TIM1_CCU3_ExtComp) == 0) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_capture_CCUVAL3_1_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL3_12Timer_CH1_dont_capture_CCUVAL3_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM3_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM3_CH1_out == 4) ) && 
	 ( $past(tc_soc_timer.TIM1_CCU3_ExtCap) == 1) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 60) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL3_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL3_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_capture_CCUVAL3_1_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL3_12Timer_CH1_dont_capture_CCUVAL3_1_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM3_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM3_CH1_out == 4) ) && 
	 ( $past(tc_soc_timer.TIM1_CCU3_ExtCap) == 1) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 60) ) )  ) 
	|->
	  ##1
	 ( $past(tc_soc_timer.TIM1_CCU3_ExtComp) == 0) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_capture_CCUVAL3_2_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL3_22Timer_CH1_dont_capture_CCUVAL3_2;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM3_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM3_CH1_out == 6) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 60) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL3_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL3_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_capture_CCUVAL3_2_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL3_22Timer_CH1_dont_capture_CCUVAL3_2_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM3_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM3_CH1_out == 6) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 60) ) )  ) 
	|->
	  ##1
	 ( $past(tc_soc_timer.TIM1_CCU3_ExtComp) == 0) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_capture_CCUVAL3_3_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL3_32Timer_CH1_dont_capture_CCUVAL3_3;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM3_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM3_CH1_out == 7) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 60) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL3_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL3_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_capture_CCUVAL3_3_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL3_32Timer_CH1_dont_capture_CCUVAL3_3_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM3_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM3_CH1_out == 7) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 60) ) )  ) 
	|->
	  ##1
	 ( $past(tc_soc_timer.TIM1_CCU3_ExtComp) == 0) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_capture_CCUVAL3_4_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL3_42Timer_CH1_dont_capture_CCUVAL3_4;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM3_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM3_CH1_out == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 60) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL3_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL3_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_capture_CCUVAL3_4_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL3_42Timer_CH1_dont_capture_CCUVAL3_4_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM3_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM3_CH1_out == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 60) ) )  ) 
	|->
	  ##1
	 ( $past(tc_soc_timer.TIM1_CCU3_ExtComp) == 0) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_capture_CCUVAL3_2_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL3_22Timer_CH1_capture_CCUVAL3_2;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM3_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM3_CH1_out == 1) ) && 
	  $past( $rose(tc_soc_timer.TIM1_CCU3_ExtCap)) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL3_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_capture_CCUVAL3_2_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL3_22Timer_CH1_capture_CCUVAL3_2_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM3_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM3_CH1_out == 1) ) && 
	  $past( $rose(tc_soc_timer.TIM1_CCU3_ExtCap)) ) )  ) 
	|->
	  ##1
	 ( $past(tc_soc_timer.TIM1_CCU3_ExtComp) == 0) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_capture_CCUVAL3_5_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL3_52Timer_CH1_dont_capture_CCUVAL3_5;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM3_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM3_CH1_out == 1) ) && 
	 ( $past( $rose(tc_soc_timer.TIM1_CCU3_ExtCap)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 60) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL3_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL3_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_capture_CCUVAL3_5_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL3_52Timer_CH1_dont_capture_CCUVAL3_5_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM3_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM3_CH1_out == 1) ) && 
	 ( $past( $rose(tc_soc_timer.TIM1_CCU3_ExtCap)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 60) ) )  ) 
	|->
	  ##1
	 ( $past(tc_soc_timer.TIM1_CCU3_ExtComp) == 0) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_capture_CCUVAL3_3_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL3_32Timer_CH1_capture_CCUVAL3_3;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM3_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM3_CH1_out == 2) ) && 
	  $past( $fell(tc_soc_timer.TIM1_CCU3_ExtCap)) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL3_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_capture_CCUVAL3_3_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL3_32Timer_CH1_capture_CCUVAL3_3_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM3_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM3_CH1_out == 2) ) && 
	  $past( $fell(tc_soc_timer.TIM1_CCU3_ExtCap)) ) )  ) 
	|->
	  ##1
	 ( $past(tc_soc_timer.TIM1_CCU3_ExtComp) == 0) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_capture_CCUVAL3_6_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL3_62Timer_CH1_dont_capture_CCUVAL3_6;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM3_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM3_CH1_out == 2) ) && 
	 ( $past( $fell(tc_soc_timer.TIM1_CCU3_ExtCap)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 60) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL3_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL3_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_capture_CCUVAL3_6_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL3_62Timer_CH1_dont_capture_CCUVAL3_6_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM3_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM3_CH1_out == 2) ) && 
	 ( $past( $fell(tc_soc_timer.TIM1_CCU3_ExtCap)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 60) ) )  ) 
	|->
	  ##1
	 ( $past(tc_soc_timer.TIM1_CCU3_ExtComp) == 0) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_capture_CCUVAL3_4_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL3_42Timer_CH1_capture_CCUVAL3_4;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM3_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM3_CH1_out == 5) ) && 
	 ( $past( $rose(tc_soc_timer.TIM1_CCU3_ExtCap)) ||  $past( $fell(tc_soc_timer.TIM1_CCU3_ExtCap))) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL3_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_capture_CCUVAL3_4_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL3_42Timer_CH1_capture_CCUVAL3_4_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM3_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM3_CH1_out == 5) ) && 
	 ( $past( $rose(tc_soc_timer.TIM1_CCU3_ExtCap)) ||  $past( $fell(tc_soc_timer.TIM1_CCU3_ExtCap))) ) )  ) 
	|->
	  ##1
	 ( $past(tc_soc_timer.TIM1_CCU3_ExtComp) == 0) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_capture_CCUVAL3_7_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL3_72Timer_CH1_dont_capture_CCUVAL3_7;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM3_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM3_CH1_out == 5) ) && 
	 (( $past( $rose(tc_soc_timer.TIM1_CCU3_ExtCap)) ||  $past( $fell(tc_soc_timer.TIM1_CCU3_ExtCap))) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 60) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL3_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL3_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_capture_CCUVAL3_7_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL3_72Timer_CH1_dont_capture_CCUVAL3_7_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM3_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM3_CH1_out == 5) ) && 
	 (( $past( $rose(tc_soc_timer.TIM1_CCU3_ExtCap)) ||  $past( $fell(tc_soc_timer.TIM1_CCU3_ExtCap))) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 60) ) )  ) 
	|->
	  ##1
	 ( $past(tc_soc_timer.TIM1_CCU3_ExtComp) == 0) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property idle_2_Timer_CH1_compare_CCM1_CCU32Timer_CH1_compare_CCM1_CCU3;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM3_CH1_out == 1) ) 
	|->
	 (tc_soc_timer.TIM1_CCU3_ExtComp == (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out < tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL3_CH1_flipflop_out)));
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property idle_2_Timer_CH1_compare_CCM2_CCU32Timer_CH1_compare_CCM2_CCU3;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM3_CH1_out == 2) ) 
	|->
	 (tc_soc_timer.TIM1_CCU3_ExtComp == (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out <= tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL3_CH1_flipflop_out)));
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property idle_2_Timer_CH1_compare_CCM3_CCU32Timer_CH1_compare_CCM3_CCU3;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM3_CH1_out == 3) ) 
	|->
	 (tc_soc_timer.TIM1_CCU3_ExtComp == (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out > tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL3_CH1_flipflop_out)));
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property idle_2_Timer_CH1_compare_CCM4_CCU32Timer_CH1_compare_CCM4_CCU3;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM3_CH1_out == 4) ) 
	|->
	 (tc_soc_timer.TIM1_CCU3_ExtComp == (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out >= tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL3_CH1_flipflop_out)));
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property idle_2_Timer_CH1_compare_CCM5_CCU32Timer_CH1_compare_CCM5_CCU3;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM3_CH1_out == 5) ) 
	|->
	 (tc_soc_timer.TIM1_CCU3_ExtComp == (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out == tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL3_CH1_flipflop_out)));
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property idle_2_Timer_CH1_compare_CCM6_CCU32Timer_CH1_compare_CCM6_CCU3;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM3_CH1_out == 6) ) 
	|->
	 (tc_soc_timer.TIM1_CCU3_ExtComp == (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL3_CH1_flipflop_out)));
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property idle_2_Timer_CH1_disabled_compare_CCM7_CCU32Timer_CH1_disabled_compare_CCM7_CCU3;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM3_CH1_out == 7) ) 
	|->
	 (tc_soc_timer.TIM1_CCU3_ExtComp == 0));
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_capture_CCUVAL4_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL42Timer_CH1_capture_CCUVAL4;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM4_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM4_CH1_out == 3) ) && 
	 ( $past(tc_soc_timer.TIM1_CCU4_ExtCap) == 1) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL4_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_capture_CCUVAL4_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL42Timer_CH1_capture_CCUVAL4_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM4_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM4_CH1_out == 3) ) && 
	 ( $past(tc_soc_timer.TIM1_CCU4_ExtCap) == 1) ) )  ) 
	|->
	  ##1
	 ( $past(tc_soc_timer.TIM1_CCU4_ExtComp) == 0) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_capture_CCUVAL4_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL42Timer_CH1_dont_capture_CCUVAL4;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM4_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM4_CH1_out == 3) ) && 
	 ( $past(tc_soc_timer.TIM1_CCU4_ExtCap) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 68) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL4_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL4_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_capture_CCUVAL4_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL42Timer_CH1_dont_capture_CCUVAL4_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM4_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM4_CH1_out == 3) ) && 
	 ( $past(tc_soc_timer.TIM1_CCU4_ExtCap) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 68) ) )  ) 
	|->
	  ##1
	 ( $past(tc_soc_timer.TIM1_CCU4_ExtComp) == 0) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_capture_CCUVAL4_1_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL4_12Timer_CH1_capture_CCUVAL4_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM4_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM4_CH1_out == 4) ) && 
	 ( $past(tc_soc_timer.TIM1_CCU4_ExtCap) == 0) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL4_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_capture_CCUVAL4_1_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL4_12Timer_CH1_capture_CCUVAL4_1_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM4_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM4_CH1_out == 4) ) && 
	 ( $past(tc_soc_timer.TIM1_CCU4_ExtCap) == 0) ) )  ) 
	|->
	  ##1
	 ( $past(tc_soc_timer.TIM1_CCU4_ExtComp) == 0) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_capture_CCUVAL4_1_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL4_12Timer_CH1_dont_capture_CCUVAL4_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM4_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM4_CH1_out == 4) ) && 
	 ( $past(tc_soc_timer.TIM1_CCU4_ExtCap) == 1) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 68) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL4_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL4_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_capture_CCUVAL4_1_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL4_12Timer_CH1_dont_capture_CCUVAL4_1_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM4_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM4_CH1_out == 4) ) && 
	 ( $past(tc_soc_timer.TIM1_CCU4_ExtCap) == 1) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 68) ) )  ) 
	|->
	  ##1
	 ( $past(tc_soc_timer.TIM1_CCU4_ExtComp) == 0) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_capture_CCUVAL4_2_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL4_22Timer_CH1_dont_capture_CCUVAL4_2;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM4_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM4_CH1_out == 6) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 68) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL4_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL4_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_capture_CCUVAL4_2_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL4_22Timer_CH1_dont_capture_CCUVAL4_2_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM4_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM4_CH1_out == 6) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 68) ) )  ) 
	|->
	  ##1
	 ( $past(tc_soc_timer.TIM1_CCU4_ExtComp) == 0) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_capture_CCUVAL4_3_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL4_32Timer_CH1_dont_capture_CCUVAL4_3;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM4_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM4_CH1_out == 7) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 68) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL4_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL4_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_capture_CCUVAL4_3_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL4_32Timer_CH1_dont_capture_CCUVAL4_3_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM4_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM4_CH1_out == 7) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 68) ) )  ) 
	|->
	  ##1
	 ( $past(tc_soc_timer.TIM1_CCU4_ExtComp) == 0) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_capture_CCUVAL4_4_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL4_42Timer_CH1_dont_capture_CCUVAL4_4;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM4_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM4_CH1_out == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 68) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL4_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL4_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_capture_CCUVAL4_4_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL4_42Timer_CH1_dont_capture_CCUVAL4_4_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM4_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM4_CH1_out == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 68) ) )  ) 
	|->
	  ##1
	 ( $past(tc_soc_timer.TIM1_CCU4_ExtComp) == 0) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_capture_CCUVAL4_2_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL4_22Timer_CH1_capture_CCUVAL4_2;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM4_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM4_CH1_out == 1) ) && 
	  $past( $rose(tc_soc_timer.TIM1_CCU4_ExtCap)) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL4_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_capture_CCUVAL4_2_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL4_22Timer_CH1_capture_CCUVAL4_2_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM4_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM4_CH1_out == 1) ) && 
	  $past( $rose(tc_soc_timer.TIM1_CCU4_ExtCap)) ) )  ) 
	|->
	  ##1
	 ( $past(tc_soc_timer.TIM1_CCU4_ExtComp) == 0) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_capture_CCUVAL4_5_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL4_52Timer_CH1_dont_capture_CCUVAL4_5;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM4_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM4_CH1_out == 1) ) && 
	 ( $past( $rose(tc_soc_timer.TIM1_CCU4_ExtCap)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 68) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL4_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL4_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_capture_CCUVAL4_5_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL4_52Timer_CH1_dont_capture_CCUVAL4_5_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM4_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM4_CH1_out == 1) ) && 
	 ( $past( $rose(tc_soc_timer.TIM1_CCU4_ExtCap)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 68) ) )  ) 
	|->
	  ##1
	 ( $past(tc_soc_timer.TIM1_CCU4_ExtComp) == 0) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_capture_CCUVAL4_3_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL4_32Timer_CH1_capture_CCUVAL4_3;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM4_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM4_CH1_out == 2) ) && 
	  $past( $fell(tc_soc_timer.TIM1_CCU4_ExtCap)) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL4_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_capture_CCUVAL4_3_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL4_32Timer_CH1_capture_CCUVAL4_3_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM4_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM4_CH1_out == 2) ) && 
	  $past( $fell(tc_soc_timer.TIM1_CCU4_ExtCap)) ) )  ) 
	|->
	  ##1
	 ( $past(tc_soc_timer.TIM1_CCU4_ExtComp) == 0) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_capture_CCUVAL4_6_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL4_62Timer_CH1_dont_capture_CCUVAL4_6;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM4_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM4_CH1_out == 2) ) && 
	 ( $past( $fell(tc_soc_timer.TIM1_CCU4_ExtCap)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 68) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL4_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL4_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_capture_CCUVAL4_6_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL4_62Timer_CH1_dont_capture_CCUVAL4_6_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM4_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM4_CH1_out == 2) ) && 
	 ( $past( $fell(tc_soc_timer.TIM1_CCU4_ExtCap)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 68) ) )  ) 
	|->
	  ##1
	 ( $past(tc_soc_timer.TIM1_CCU4_ExtComp) == 0) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_capture_CCUVAL4_4_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL4_42Timer_CH1_capture_CCUVAL4_4;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM4_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM4_CH1_out == 5) ) && 
	 ( $past( $rose(tc_soc_timer.TIM1_CCU4_ExtCap)) ||  $past( $fell(tc_soc_timer.TIM1_CCU4_ExtCap))) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL4_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_capture_CCUVAL4_4_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL4_42Timer_CH1_capture_CCUVAL4_4_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM4_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM4_CH1_out == 5) ) && 
	 ( $past( $rose(tc_soc_timer.TIM1_CCU4_ExtCap)) ||  $past( $fell(tc_soc_timer.TIM1_CCU4_ExtCap))) ) )  ) 
	|->
	  ##1
	 ( $past(tc_soc_timer.TIM1_CCU4_ExtComp) == 0) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_capture_CCUVAL4_7_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL4_72Timer_CH1_dont_capture_CCUVAL4_7;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM4_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM4_CH1_out == 5) ) && 
	 (( $past( $rose(tc_soc_timer.TIM1_CCU4_ExtCap)) ||  $past( $fell(tc_soc_timer.TIM1_CCU4_ExtCap))) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 68) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL4_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL4_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_capture_CCUVAL4_7_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL4_72Timer_CH1_dont_capture_CCUVAL4_7_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM4_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM4_CH1_out == 5) ) && 
	 (( $past( $rose(tc_soc_timer.TIM1_CCU4_ExtCap)) ||  $past( $fell(tc_soc_timer.TIM1_CCU4_ExtCap))) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 68) ) )  ) 
	|->
	  ##1
	 ( $past(tc_soc_timer.TIM1_CCU4_ExtComp) == 0) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property idle_2_Timer_CH1_compare_CCM1_CCU42Timer_CH1_compare_CCM1_CCU4;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM4_CH1_out == 1) ) 
	|->
	 (tc_soc_timer.TIM1_CCU4_ExtComp == (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out < tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL4_CH1_flipflop_out)));
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property idle_2_Timer_CH1_compare_CCM2_CCU42Timer_CH1_compare_CCM2_CCU4;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM4_CH1_out == 2) ) 
	|->
	 (tc_soc_timer.TIM1_CCU4_ExtComp == (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out <= tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL4_CH1_flipflop_out)));
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property idle_2_Timer_CH1_compare_CCM3_CCU42Timer_CH1_compare_CCM3_CCU4;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM4_CH1_out == 3) ) 
	|->
	 (tc_soc_timer.TIM1_CCU4_ExtComp == (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out > tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL4_CH1_flipflop_out)));
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property idle_2_Timer_CH1_compare_CCM4_CCU42Timer_CH1_compare_CCM4_CCU4;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM4_CH1_out == 4) ) 
	|->
	 (tc_soc_timer.TIM1_CCU4_ExtComp == (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out >= tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL4_CH1_flipflop_out)));
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property idle_2_Timer_CH1_compare_CCM5_CCU42Timer_CH1_compare_CCM5_CCU4;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM4_CH1_out == 5) ) 
	|->
	 (tc_soc_timer.TIM1_CCU4_ExtComp == (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out == tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL4_CH1_flipflop_out)));
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property idle_2_Timer_CH1_compare_CCM6_CCU42Timer_CH1_compare_CCM6_CCU4;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM4_CH1_out == 6) ) 
	|->
	 (tc_soc_timer.TIM1_CCU4_ExtComp == (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL4_CH1_flipflop_out)));
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property idle_2_Timer_CH1_disabled_compare_CCM7_CCU42Timer_CH1_disabled_compare_CCM7_CCU4;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM4_CH1_out == 7) ) 
	|->
	 (tc_soc_timer.TIM1_CCU4_ExtComp == 0));
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_capture_CCUVAL5_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL52Timer_CH1_capture_CCUVAL5;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM5_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM5_CH1_out == 3) ) && 
	 ( $past(tc_soc_timer.TIM1_CCU5_ExtCap) == 1) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL5_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_capture_CCUVAL5_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL52Timer_CH1_capture_CCUVAL5_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM5_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM5_CH1_out == 3) ) && 
	 ( $past(tc_soc_timer.TIM1_CCU5_ExtCap) == 1) ) )  ) 
	|->
	  ##1
	 ( $past(tc_soc_timer.TIM1_CCU5_ExtComp) == 0) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_capture_CCUVAL5_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL52Timer_CH1_dont_capture_CCUVAL5;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM5_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM5_CH1_out == 3) ) && 
	 ( $past(tc_soc_timer.TIM1_CCU5_ExtCap) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 76) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL5_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL5_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_capture_CCUVAL5_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL52Timer_CH1_dont_capture_CCUVAL5_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM5_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM5_CH1_out == 3) ) && 
	 ( $past(tc_soc_timer.TIM1_CCU5_ExtCap) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 76) ) )  ) 
	|->
	  ##1
	 ( $past(tc_soc_timer.TIM1_CCU5_ExtComp) == 0) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_capture_CCUVAL5_1_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL5_12Timer_CH1_capture_CCUVAL5_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM5_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM5_CH1_out == 4) ) && 
	 ( $past(tc_soc_timer.TIM1_CCU5_ExtCap) == 0) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL5_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_capture_CCUVAL5_1_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL5_12Timer_CH1_capture_CCUVAL5_1_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM5_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM5_CH1_out == 4) ) && 
	 ( $past(tc_soc_timer.TIM1_CCU5_ExtCap) == 0) ) )  ) 
	|->
	  ##1
	 ( $past(tc_soc_timer.TIM1_CCU5_ExtComp) == 0) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_capture_CCUVAL5_1_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL5_12Timer_CH1_dont_capture_CCUVAL5_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM5_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM5_CH1_out == 4) ) && 
	 ( $past(tc_soc_timer.TIM1_CCU5_ExtCap) == 1) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 76) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL5_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL5_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_capture_CCUVAL5_1_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL5_12Timer_CH1_dont_capture_CCUVAL5_1_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM5_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM5_CH1_out == 4) ) && 
	 ( $past(tc_soc_timer.TIM1_CCU5_ExtCap) == 1) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 76) ) )  ) 
	|->
	  ##1
	 ( $past(tc_soc_timer.TIM1_CCU5_ExtComp) == 0) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_capture_CCUVAL5_2_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL5_22Timer_CH1_dont_capture_CCUVAL5_2;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM5_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM5_CH1_out == 6) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 76) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL5_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL5_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_capture_CCUVAL5_2_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL5_22Timer_CH1_dont_capture_CCUVAL5_2_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM5_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM5_CH1_out == 6) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 76) ) )  ) 
	|->
	  ##1
	 ( $past(tc_soc_timer.TIM1_CCU5_ExtComp) == 0) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_capture_CCUVAL5_3_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL5_32Timer_CH1_dont_capture_CCUVAL5_3;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM5_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM5_CH1_out == 7) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 76) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL5_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL5_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_capture_CCUVAL5_3_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL5_32Timer_CH1_dont_capture_CCUVAL5_3_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM5_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM5_CH1_out == 7) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 76) ) )  ) 
	|->
	  ##1
	 ( $past(tc_soc_timer.TIM1_CCU5_ExtComp) == 0) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_capture_CCUVAL5_4_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL5_42Timer_CH1_dont_capture_CCUVAL5_4;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM5_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM5_CH1_out == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 76) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL5_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL5_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_capture_CCUVAL5_4_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL5_42Timer_CH1_dont_capture_CCUVAL5_4_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM5_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM5_CH1_out == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 76) ) )  ) 
	|->
	  ##1
	 ( $past(tc_soc_timer.TIM1_CCU5_ExtComp) == 0) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_capture_CCUVAL5_2_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL5_22Timer_CH1_capture_CCUVAL5_2;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM5_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM5_CH1_out == 1) ) && 
	  $past( $rose(tc_soc_timer.TIM1_CCU5_ExtCap)) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL5_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_capture_CCUVAL5_2_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL5_22Timer_CH1_capture_CCUVAL5_2_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM5_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM5_CH1_out == 1) ) && 
	  $past( $rose(tc_soc_timer.TIM1_CCU5_ExtCap)) ) )  ) 
	|->
	  ##1
	 ( $past(tc_soc_timer.TIM1_CCU5_ExtComp) == 0) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_capture_CCUVAL5_5_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL5_52Timer_CH1_dont_capture_CCUVAL5_5;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM5_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM5_CH1_out == 1) ) && 
	 ( $past( $rose(tc_soc_timer.TIM1_CCU5_ExtCap)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 76) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL5_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL5_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_capture_CCUVAL5_5_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL5_52Timer_CH1_dont_capture_CCUVAL5_5_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM5_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM5_CH1_out == 1) ) && 
	 ( $past( $rose(tc_soc_timer.TIM1_CCU5_ExtCap)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 76) ) )  ) 
	|->
	  ##1
	 ( $past(tc_soc_timer.TIM1_CCU5_ExtComp) == 0) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_capture_CCUVAL5_3_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL5_32Timer_CH1_capture_CCUVAL5_3;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM5_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM5_CH1_out == 2) ) && 
	  $past( $fell(tc_soc_timer.TIM1_CCU5_ExtCap)) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL5_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_capture_CCUVAL5_3_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL5_32Timer_CH1_capture_CCUVAL5_3_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM5_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM5_CH1_out == 2) ) && 
	  $past( $fell(tc_soc_timer.TIM1_CCU5_ExtCap)) ) )  ) 
	|->
	  ##1
	 ( $past(tc_soc_timer.TIM1_CCU5_ExtComp) == 0) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_capture_CCUVAL5_6_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL5_62Timer_CH1_dont_capture_CCUVAL5_6;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM5_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM5_CH1_out == 2) ) && 
	 ( $past( $fell(tc_soc_timer.TIM1_CCU5_ExtCap)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 76) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL5_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL5_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_capture_CCUVAL5_6_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL5_62Timer_CH1_dont_capture_CCUVAL5_6_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM5_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM5_CH1_out == 2) ) && 
	 ( $past( $fell(tc_soc_timer.TIM1_CCU5_ExtCap)) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 76) ) )  ) 
	|->
	  ##1
	 ( $past(tc_soc_timer.TIM1_CCU5_ExtComp) == 0) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_capture_CCUVAL5_4_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL5_42Timer_CH1_capture_CCUVAL5_4;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM5_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM5_CH1_out == 5) ) && 
	 ( $past( $rose(tc_soc_timer.TIM1_CCU5_ExtCap)) ||  $past( $fell(tc_soc_timer.TIM1_CCU5_ExtCap))) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL5_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_capture_CCUVAL5_4_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL5_42Timer_CH1_capture_CCUVAL5_4_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM5_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM5_CH1_out == 5) ) && 
	 ( $past( $rose(tc_soc_timer.TIM1_CCU5_ExtCap)) ||  $past( $fell(tc_soc_timer.TIM1_CCU5_ExtCap))) ) )  ) 
	|->
	  ##1
	 ( $past(tc_soc_timer.TIM1_CCU5_ExtComp) == 0) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_capture_CCUVAL5_7_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL5_72Timer_CH1_dont_capture_CCUVAL5_7;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM5_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM5_CH1_out == 5) ) && 
	 (( $past( $rose(tc_soc_timer.TIM1_CCU5_ExtCap)) ||  $past( $fell(tc_soc_timer.TIM1_CCU5_ExtCap))) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 76) ) )  ) 
	|->
	  ##1
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL5_CH1_flipflop_out ==  $past(tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL5_CH1_flipflop_out)) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_dont_capture_CCUVAL5_7_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL5_72Timer_CH1_dont_capture_CCUVAL5_7_1;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( ( ( ( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM5_CH1_out == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CapIM5_CH1_out == 5) ) && 
	 (( $past( $rose(tc_soc_timer.TIM1_CCU5_ExtCap)) ||  $past( $fell(tc_soc_timer.TIM1_CCU5_ExtCap))) == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.default_interface_addr != 76) ) )  ) 
	|->
	  ##1
	 ( $past(tc_soc_timer.TIM1_CCU5_ExtComp) == 0) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property idle_2_Timer_CH1_compare_CCM1_CCU52Timer_CH1_compare_CCM1_CCU5;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM5_CH1_out == 1) ) 
	|->
	 (tc_soc_timer.TIM1_CCU5_ExtComp == (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out < tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL5_CH1_flipflop_out)));
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property idle_2_Timer_CH1_compare_CCM2_CCU52Timer_CH1_compare_CCM2_CCU5;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM5_CH1_out == 2) ) 
	|->
	 (tc_soc_timer.TIM1_CCU5_ExtComp == (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out <= tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL5_CH1_flipflop_out)));
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property idle_2_Timer_CH1_compare_CCM3_CCU52Timer_CH1_compare_CCM3_CCU5;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM5_CH1_out == 3) ) 
	|->
	 (tc_soc_timer.TIM1_CCU5_ExtComp == (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out > tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL5_CH1_flipflop_out)));
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property idle_2_Timer_CH1_compare_CCM4_CCU52Timer_CH1_compare_CCM4_CCU5;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM5_CH1_out == 4) ) 
	|->
	 (tc_soc_timer.TIM1_CCU5_ExtComp == (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out >= tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL5_CH1_flipflop_out)));
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property idle_2_Timer_CH1_compare_CCM5_CCU52Timer_CH1_compare_CCM5_CCU5;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM5_CH1_out == 5) ) 
	|->
	 (tc_soc_timer.TIM1_CCU5_ExtComp == (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out == tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL5_CH1_flipflop_out)));
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property idle_2_Timer_CH1_compare_CCM6_CCU52Timer_CH1_compare_CCM6_CCU5;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM5_CH1_out == 6) ) 
	|->
	 (tc_soc_timer.TIM1_CCU5_ExtComp == (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out != tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCUVAL5_CH1_flipflop_out)));
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property idle_2_Timer_CH1_disabled_compare_CCM7_CCU52Timer_CH1_disabled_compare_CCM7_CCU5;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_CCM5_CH1_out == 7) ) 
	|->
	 (tc_soc_timer.TIM1_CCU5_ExtComp == 0));
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH0_overflow_int_reset_intermediate_stateintermediate_2_Timer_CH0_overflow_int_reset2Timer_CH0_overflow_int_reset;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( (tc_soc_timer.TIM0_OvfIntRes == 1) )  ) 
	|->
	  ##1
	 (tc_soc_timer.TIM0_OvfInt == 0) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property idle_2_Timer_CH0_overflow_int_set2Timer_CH0_overflow_int_set;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( ( ( (tc_soc_timer.TIM0_OvfIntRes == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_OvfIntEn_CH0_out == 1) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out == 7) ) ) 
	|->
	  ##1
	 (tc_soc_timer.TIM0_OvfInt == 1) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property idle_2_Timer_CH0_overflow_int_set2Timer_CH0_overflow_int_not_set;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( ( ( (tc_soc_timer.TIM0_OvfIntRes == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_OvfIntEn_CH0_out == 1) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH0_flipflop_out == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH0_out != 7) ) ) 
	|->
	  ##1
	 (tc_soc_timer.TIM0_OvfInt == 0) );
    endproperty	
//---------------------------------------------------------------------------------------------

    //
    property Timer_CH1_overflow_int_reset_intermediate_stateintermediate_2_Timer_CH1_overflow_int_reset2Timer_CH1_overflow_int_reset;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( 1 )  ##2
	 ( (tc_soc_timer.TIM1_OvfIntRes == 1) )  ) 
	|->
	  ##1
	 (tc_soc_timer.TIM1_OvfInt == 0) );
    endproperty
//---------------------------------------------------------------------------------------------

    //
    property idle_2_Timer_CH1_overflow_int_set2Timer_CH1_overflow_int_set;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( ( ( (tc_soc_timer.TIM1_OvfIntRes == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_OvfIntEn_CH1_out == 1) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out == 7) ) ) 
	|->
	  ##1
	 (tc_soc_timer.TIM1_OvfInt == 1) );
    endproperty

//---------------------------------------------------------------------------------------------

    //
    property idle_2_Timer_CH1_overflow_int_set2Timer_CH1_overflow_int_not_set;
    @(posedge tc_soc_timer.HCLK_i)
    disable iff(!tc_soc_timer.HRESET_n_i)
        (( ( ( ( (tc_soc_timer.TIM1_OvfIntRes == 0) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_OvfIntEn_CH1_out == 1) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ACTVAL_CH1_flipflop_out == 0) ) && 
	 (tc_soc_timer.comp_Reg_IF.comp_Top_CSC.TimerCSC_BF_bf_ResIM_CH1_out != 7) ) ) 
	|->
	  ##1
	 (tc_soc_timer.TIM1_OvfInt == 0) );
    endproperty
//---------------------------------------------------------------------------------------------

    
    Timer_CH0_dont_count_intermediate_stateintermediate_2_Timer_CH0_dont_count2Timer_CH0_dont_count_assert: assert property(Timer_CH0_dont_count_intermediate_stateintermediate_2_Timer_CH0_dont_count2Timer_CH0_dont_count);
    Timer_CH0_reset_2_maxval_intermediate_stateintermediate_2_Timer_CH0_reset_2_maxval2Timer_CH0_reset_2_maxval_assert: assert property(Timer_CH0_reset_2_maxval_intermediate_stateintermediate_2_Timer_CH0_reset_2_maxval2Timer_CH0_reset_2_maxval);
	Timer_CH0_no_reset_2_maxval_intermediate_stateintermediate_2_Timer_CH0_no_reset_2_maxval2Timer_CH0_no_reset_2_maxval_assert: assert property(Timer_CH0_no_reset_2_maxval_intermediate_stateintermediate_2_Timer_CH0_no_reset_2_maxval2Timer_CH0_no_reset_2_maxval);
    Timer_CH0_reset_2_maxval_1_intermediate_stateintermediate_2_Timer_CH0_reset_2_maxval_12Timer_CH0_reset_2_maxval_1_assert: assert property(Timer_CH0_reset_2_maxval_1_intermediate_stateintermediate_2_Timer_CH0_reset_2_maxval_12Timer_CH0_reset_2_maxval_1);
    Timer_CH0_dont_count_1_intermediate_stateintermediate_2_Timer_CH0_dont_count_12Timer_CH0_dont_count_1_assert: assert property(Timer_CH0_dont_count_1_intermediate_stateintermediate_2_Timer_CH0_dont_count_12Timer_CH0_dont_count_1);
    Timer_CH0_reset_2_maxval_2_intermediate_stateintermediate_2_Timer_CH0_reset_2_maxval_22Timer_CH0_reset_2_maxval_2_assert: assert property(Timer_CH0_reset_2_maxval_2_intermediate_stateintermediate_2_Timer_CH0_reset_2_maxval_22Timer_CH0_reset_2_maxval_2);
    Timer_CH0_dont_count_2_intermediate_stateintermediate_2_Timer_CH0_dont_count_22Timer_CH0_dont_count_2_assert: assert property(Timer_CH0_dont_count_2_intermediate_stateintermediate_2_Timer_CH0_dont_count_22Timer_CH0_dont_count_2);
    Timer_CH0_dont_count_3_intermediate_stateintermediate_2_Timer_CH0_dont_count_32Timer_CH0_dont_count_3_assert: assert property(Timer_CH0_dont_count_3_intermediate_stateintermediate_2_Timer_CH0_dont_count_32Timer_CH0_dont_count_3);
    Timer_CH0_dont_count_4_intermediate_stateintermediate_2_Timer_CH0_dont_count_42Timer_CH0_dont_count_4_assert: assert property(Timer_CH0_dont_count_4_intermediate_stateintermediate_2_Timer_CH0_dont_count_42Timer_CH0_dont_count_4);
    Timer_CH0_reset_2_maxval_3_intermediate_stateintermediate_2_Timer_CH0_reset_2_maxval_32Timer_CH0_reset_2_maxval_3_assert: assert property(Timer_CH0_reset_2_maxval_3_intermediate_stateintermediate_2_Timer_CH0_reset_2_maxval_32Timer_CH0_reset_2_maxval_3);
    Timer_CH0_dont_count_5_intermediate_stateintermediate_2_Timer_CH0_dont_count_52Timer_CH0_dont_count_5_assert: assert property(Timer_CH0_dont_count_5_intermediate_stateintermediate_2_Timer_CH0_dont_count_52Timer_CH0_dont_count_5);
    Timer_CH0_reset_2_maxval_4_intermediate_stateintermediate_2_Timer_CH0_reset_2_maxval_42Timer_CH0_reset_2_maxval_4_assert: assert property(Timer_CH0_reset_2_maxval_4_intermediate_stateintermediate_2_Timer_CH0_reset_2_maxval_42Timer_CH0_reset_2_maxval_4);
    Timer_CH0_dont_count_6_intermediate_stateintermediate_2_Timer_CH0_dont_count_62Timer_CH0_dont_count_6_assert: assert property(Timer_CH0_dont_count_6_intermediate_stateintermediate_2_Timer_CH0_dont_count_62Timer_CH0_dont_count_6);
    Timer_CH0_reset_2_maxval_5_intermediate_stateintermediate_2_Timer_CH0_reset_2_maxval_52Timer_CH0_reset_2_maxval_5_assert: assert property(Timer_CH0_reset_2_maxval_5_intermediate_stateintermediate_2_Timer_CH0_reset_2_maxval_52Timer_CH0_reset_2_maxval_5);
    Timer_CH0_dont_count_7_intermediate_stateintermediate_2_Timer_CH0_dont_count_72Timer_CH0_dont_count_7_assert: assert property(Timer_CH0_dont_count_7_intermediate_stateintermediate_2_Timer_CH0_dont_count_72Timer_CH0_dont_count_7);
    Timer_CH0_reset_2_maxval_6_intermediate_stateintermediate_2_Timer_CH0_reset_2_maxval_62Timer_CH0_reset_2_maxval_6_assert: assert property(Timer_CH0_reset_2_maxval_6_intermediate_stateintermediate_2_Timer_CH0_reset_2_maxval_62Timer_CH0_reset_2_maxval_6);
    Timer_CH0_down_count_intermediate_stateintermediate_2_Timer_CH0_down_count2Timer_CH0_down_count_assert: assert property(Timer_CH0_down_count_intermediate_stateintermediate_2_Timer_CH0_down_count2Timer_CH0_down_count);
    Timer_CH0_dont_count_8_intermediate_stateintermediate_2_Timer_CH0_dont_count_82Timer_CH0_dont_count_8_assert: assert property(Timer_CH0_dont_count_8_intermediate_stateintermediate_2_Timer_CH0_dont_count_82Timer_CH0_dont_count_8);
    Timer_CH0_down_count_1_intermediate_stateintermediate_2_Timer_CH0_down_count_12Timer_CH0_down_count_1_assert: assert property(Timer_CH0_down_count_1_intermediate_stateintermediate_2_Timer_CH0_down_count_12Timer_CH0_down_count_1);
    Timer_CH0_dont_count_9_intermediate_stateintermediate_2_Timer_CH0_dont_count_92Timer_CH0_dont_count_9_assert: assert property(Timer_CH0_dont_count_9_intermediate_stateintermediate_2_Timer_CH0_dont_count_92Timer_CH0_dont_count_9);
    Timer_CH0_dont_count_10_intermediate_stateintermediate_2_Timer_CH0_dont_count_102Timer_CH0_dont_count_10_assert: assert property(Timer_CH0_dont_count_10_intermediate_stateintermediate_2_Timer_CH0_dont_count_102Timer_CH0_dont_count_10);
    Timer_CH0_dont_count_11_intermediate_stateintermediate_2_Timer_CH0_dont_count_112Timer_CH0_dont_count_11_assert: assert property(Timer_CH0_dont_count_11_intermediate_stateintermediate_2_Timer_CH0_dont_count_112Timer_CH0_dont_count_11);
    Timer_CH0_down_count_2_intermediate_stateintermediate_2_Timer_CH0_down_count_22Timer_CH0_down_count_2_assert: assert property(Timer_CH0_down_count_2_intermediate_stateintermediate_2_Timer_CH0_down_count_22Timer_CH0_down_count_2);
    Timer_CH0_down_count_3_intermediate_stateintermediate_2_Timer_CH0_down_count_32Timer_CH0_down_count_3_assert: assert property(Timer_CH0_down_count_3_intermediate_stateintermediate_2_Timer_CH0_down_count_32Timer_CH0_down_count_3);
    Timer_CH0_dont_count_12_intermediate_stateintermediate_2_Timer_CH0_dont_count_122Timer_CH0_dont_count_12_assert: assert property(Timer_CH0_dont_count_12_intermediate_stateintermediate_2_Timer_CH0_dont_count_122Timer_CH0_dont_count_12);
    Timer_CH0_down_count_4_intermediate_stateintermediate_2_Timer_CH0_down_count_42Timer_CH0_down_count_4_assert: assert property(Timer_CH0_down_count_4_intermediate_stateintermediate_2_Timer_CH0_down_count_42Timer_CH0_down_count_4);
    Timer_CH0_dont_count_13_intermediate_stateintermediate_2_Timer_CH0_dont_count_132Timer_CH0_dont_count_13_assert: assert property(Timer_CH0_dont_count_13_intermediate_stateintermediate_2_Timer_CH0_dont_count_132Timer_CH0_dont_count_13);
    Timer_CH0_down_count_5_intermediate_stateintermediate_2_Timer_CH0_down_count_52Timer_CH0_down_count_5_assert: assert property(Timer_CH0_down_count_5_intermediate_stateintermediate_2_Timer_CH0_down_count_52Timer_CH0_down_count_5);
    Timer_CH0_dont_count_14_intermediate_stateintermediate_2_Timer_CH0_dont_count_142Timer_CH0_dont_count_14_assert: assert property(Timer_CH0_dont_count_14_intermediate_stateintermediate_2_Timer_CH0_dont_count_142Timer_CH0_dont_count_14);
    Timer_CH0_down_count_6_intermediate_stateintermediate_2_Timer_CH0_down_count_62Timer_CH0_down_count_6_assert: assert property(Timer_CH0_down_count_6_intermediate_stateintermediate_2_Timer_CH0_down_count_62Timer_CH0_down_count_6);
    Timer_CH0_dont_count_15_intermediate_stateintermediate_2_Timer_CH0_dont_count_152Timer_CH0_dont_count_15_assert: assert property(Timer_CH0_dont_count_15_intermediate_stateintermediate_2_Timer_CH0_dont_count_152Timer_CH0_dont_count_15);
    Timer_CH0_reset_2_maxval_7_intermediate_stateintermediate_2_Timer_CH0_reset_2_maxval_72Timer_CH0_reset_2_maxval_7_assert: assert property(Timer_CH0_reset_2_maxval_7_intermediate_stateintermediate_2_Timer_CH0_reset_2_maxval_72Timer_CH0_reset_2_maxval_7);
    Timer_CH0_down_count_7_intermediate_stateintermediate_2_Timer_CH0_down_count_72Timer_CH0_down_count_7_assert: assert property(Timer_CH0_down_count_7_intermediate_stateintermediate_2_Timer_CH0_down_count_72Timer_CH0_down_count_7);
    Timer_CH0_dont_count_16_intermediate_stateintermediate_2_Timer_CH0_dont_count_162Timer_CH0_dont_count_16_assert: assert property(Timer_CH0_dont_count_16_intermediate_stateintermediate_2_Timer_CH0_dont_count_162Timer_CH0_dont_count_16);
    Timer_CH0_down_count_8_intermediate_stateintermediate_2_Timer_CH0_down_count_82Timer_CH0_down_count_8_assert: assert property(Timer_CH0_down_count_8_intermediate_stateintermediate_2_Timer_CH0_down_count_82Timer_CH0_down_count_8);
    Timer_CH0_dont_count_17_intermediate_stateintermediate_2_Timer_CH0_dont_count_172Timer_CH0_dont_count_17_assert: assert property(Timer_CH0_dont_count_17_intermediate_stateintermediate_2_Timer_CH0_dont_count_172Timer_CH0_dont_count_17);
    Timer_CH0_dont_count_18_intermediate_stateintermediate_2_Timer_CH0_dont_count_182Timer_CH0_dont_count_18_assert: assert property(Timer_CH0_dont_count_18_intermediate_stateintermediate_2_Timer_CH0_dont_count_182Timer_CH0_dont_count_18);
    Timer_CH0_dont_count_19_intermediate_stateintermediate_2_Timer_CH0_dont_count_192Timer_CH0_dont_count_19_assert: assert property(Timer_CH0_dont_count_19_intermediate_stateintermediate_2_Timer_CH0_dont_count_192Timer_CH0_dont_count_19);
    Timer_CH0_down_count_9_intermediate_stateintermediate_2_Timer_CH0_down_count_92Timer_CH0_down_count_9_assert: assert property(Timer_CH0_down_count_9_intermediate_stateintermediate_2_Timer_CH0_down_count_92Timer_CH0_down_count_9);
    Timer_CH0_down_count_10_intermediate_stateintermediate_2_Timer_CH0_down_count_102Timer_CH0_down_count_10_assert: assert property(Timer_CH0_down_count_10_intermediate_stateintermediate_2_Timer_CH0_down_count_102Timer_CH0_down_count_10);
    Timer_CH0_dont_count_20_intermediate_stateintermediate_2_Timer_CH0_dont_count_202Timer_CH0_dont_count_20_assert: assert property(Timer_CH0_dont_count_20_intermediate_stateintermediate_2_Timer_CH0_dont_count_202Timer_CH0_dont_count_20);
    Timer_CH0_down_count_11_intermediate_stateintermediate_2_Timer_CH0_down_count_112Timer_CH0_down_count_11_assert: assert property(Timer_CH0_down_count_11_intermediate_stateintermediate_2_Timer_CH0_down_count_112Timer_CH0_down_count_11);
    Timer_CH0_dont_count_21_intermediate_stateintermediate_2_Timer_CH0_dont_count_212Timer_CH0_dont_count_21_assert: assert property(Timer_CH0_dont_count_21_intermediate_stateintermediate_2_Timer_CH0_dont_count_212Timer_CH0_dont_count_21);
    Timer_CH0_down_count_12_intermediate_stateintermediate_2_Timer_CH0_down_count_122Timer_CH0_down_count_12_assert: assert property(Timer_CH0_down_count_12_intermediate_stateintermediate_2_Timer_CH0_down_count_122Timer_CH0_down_count_12);
    Timer_CH0_dont_count_22_intermediate_stateintermediate_2_Timer_CH0_dont_count_222Timer_CH0_dont_count_22_assert: assert property(Timer_CH0_dont_count_22_intermediate_stateintermediate_2_Timer_CH0_dont_count_222Timer_CH0_dont_count_22);
    Timer_CH0_down_count_13_intermediate_stateintermediate_2_Timer_CH0_down_count_132Timer_CH0_down_count_13_assert: assert property(Timer_CH0_down_count_13_intermediate_stateintermediate_2_Timer_CH0_down_count_132Timer_CH0_down_count_13);
    Timer_CH0_dont_count_23_intermediate_stateintermediate_2_Timer_CH0_dont_count_232Timer_CH0_dont_count_23_assert: assert property(Timer_CH0_dont_count_23_intermediate_stateintermediate_2_Timer_CH0_dont_count_232Timer_CH0_dont_count_23);
    Timer_CH0_dont_count_24_intermediate_stateintermediate_2_Timer_CH0_dont_count_242Timer_CH0_dont_count_24_assert: assert property(Timer_CH0_dont_count_24_intermediate_stateintermediate_2_Timer_CH0_dont_count_242Timer_CH0_dont_count_24);
    Timer_CH0_dont_count_25_intermediate_stateintermediate_2_Timer_CH0_dont_count_252Timer_CH0_dont_count_25_assert: assert property(Timer_CH0_dont_count_25_intermediate_stateintermediate_2_Timer_CH0_dont_count_252Timer_CH0_dont_count_25);
    Timer_CH0_down_count_14_intermediate_stateintermediate_2_Timer_CH0_down_count_142Timer_CH0_down_count_14_assert: assert property(Timer_CH0_down_count_14_intermediate_stateintermediate_2_Timer_CH0_down_count_142Timer_CH0_down_count_14);
    Timer_CH0_down_count_15_intermediate_stateintermediate_2_Timer_CH0_down_count_152Timer_CH0_down_count_15_assert: assert property(Timer_CH0_down_count_15_intermediate_stateintermediate_2_Timer_CH0_down_count_152Timer_CH0_down_count_15);
    Timer_CH0_dont_count_26_intermediate_stateintermediate_2_Timer_CH0_dont_count_262Timer_CH0_dont_count_26_assert: assert property(Timer_CH0_dont_count_26_intermediate_stateintermediate_2_Timer_CH0_dont_count_262Timer_CH0_dont_count_26);
    Timer_CH0_down_count_16_intermediate_stateintermediate_2_Timer_CH0_down_count_162Timer_CH0_down_count_16_assert: assert property(Timer_CH0_down_count_16_intermediate_stateintermediate_2_Timer_CH0_down_count_162Timer_CH0_down_count_16);
    Timer_CH0_dont_count_27_intermediate_stateintermediate_2_Timer_CH0_dont_count_272Timer_CH0_dont_count_27_assert: assert property(Timer_CH0_dont_count_27_intermediate_stateintermediate_2_Timer_CH0_dont_count_272Timer_CH0_dont_count_27);
    Timer_CH0_down_count_17_intermediate_stateintermediate_2_Timer_CH0_down_count_172Timer_CH0_down_count_17_assert: assert property(Timer_CH0_down_count_17_intermediate_stateintermediate_2_Timer_CH0_down_count_172Timer_CH0_down_count_17);
    Timer_CH0_dont_count_28_intermediate_stateintermediate_2_Timer_CH0_dont_count_282Timer_CH0_dont_count_28_assert: assert property(Timer_CH0_dont_count_28_intermediate_stateintermediate_2_Timer_CH0_dont_count_282Timer_CH0_dont_count_28);
    Timer_CH0_down_count_18_intermediate_stateintermediate_2_Timer_CH0_down_count_182Timer_CH0_down_count_18_assert: assert property(Timer_CH0_down_count_18_intermediate_stateintermediate_2_Timer_CH0_down_count_182Timer_CH0_down_count_18);
    Timer_CH0_dont_count_29_intermediate_stateintermediate_2_Timer_CH0_dont_count_292Timer_CH0_dont_count_29_assert: assert property(Timer_CH0_dont_count_29_intermediate_stateintermediate_2_Timer_CH0_dont_count_292Timer_CH0_dont_count_29);
    Timer_CH0_down_count_19_intermediate_stateintermediate_2_Timer_CH0_down_count_192Timer_CH0_down_count_19_assert: assert property(Timer_CH0_down_count_19_intermediate_stateintermediate_2_Timer_CH0_down_count_192Timer_CH0_down_count_19);
    Timer_CH0_dont_count_30_intermediate_stateintermediate_2_Timer_CH0_dont_count_302Timer_CH0_dont_count_30_assert: assert property(Timer_CH0_dont_count_30_intermediate_stateintermediate_2_Timer_CH0_dont_count_302Timer_CH0_dont_count_30);
    Timer_CH0_dont_count_31_intermediate_stateintermediate_2_Timer_CH0_dont_count_312Timer_CH0_dont_count_31_assert: assert property(Timer_CH0_dont_count_31_intermediate_stateintermediate_2_Timer_CH0_dont_count_312Timer_CH0_dont_count_31);
    Timer_CH0_dont_count_32_intermediate_stateintermediate_2_Timer_CH0_dont_count_322Timer_CH0_dont_count_32_assert: assert property(Timer_CH0_dont_count_32_intermediate_stateintermediate_2_Timer_CH0_dont_count_322Timer_CH0_dont_count_32);
    Timer_CH0_down_count_20_intermediate_stateintermediate_2_Timer_CH0_down_count_202Timer_CH0_down_count_20_assert: assert property(Timer_CH0_down_count_20_intermediate_stateintermediate_2_Timer_CH0_down_count_202Timer_CH0_down_count_20);
    Timer_CH0_down_count_21_intermediate_stateintermediate_2_Timer_CH0_down_count_212Timer_CH0_down_count_21_assert: assert property(Timer_CH0_down_count_21_intermediate_stateintermediate_2_Timer_CH0_down_count_212Timer_CH0_down_count_21);
    Timer_CH0_dont_count_33_intermediate_stateintermediate_2_Timer_CH0_dont_count_332Timer_CH0_dont_count_33_assert: assert property(Timer_CH0_dont_count_33_intermediate_stateintermediate_2_Timer_CH0_dont_count_332Timer_CH0_dont_count_33);
    Timer_CH0_down_count_22_intermediate_stateintermediate_2_Timer_CH0_down_count_222Timer_CH0_down_count_22_assert: assert property(Timer_CH0_down_count_22_intermediate_stateintermediate_2_Timer_CH0_down_count_222Timer_CH0_down_count_22);
    Timer_CH0_dont_count_34_intermediate_stateintermediate_2_Timer_CH0_dont_count_342Timer_CH0_dont_count_34_assert: assert property(Timer_CH0_dont_count_34_intermediate_stateintermediate_2_Timer_CH0_dont_count_342Timer_CH0_dont_count_34);
    Timer_CH0_down_count_23_intermediate_stateintermediate_2_Timer_CH0_down_count_232Timer_CH0_down_count_23_assert: assert property(Timer_CH0_down_count_23_intermediate_stateintermediate_2_Timer_CH0_down_count_232Timer_CH0_down_count_23);
    Timer_CH0_dont_count_35_intermediate_stateintermediate_2_Timer_CH0_dont_count_352Timer_CH0_dont_count_35_assert: assert property(Timer_CH0_dont_count_35_intermediate_stateintermediate_2_Timer_CH0_dont_count_352Timer_CH0_dont_count_35);
    Timer_CH0_down_count_24_intermediate_stateintermediate_2_Timer_CH0_down_count_242Timer_CH0_down_count_24_assert: assert property(Timer_CH0_down_count_24_intermediate_stateintermediate_2_Timer_CH0_down_count_242Timer_CH0_down_count_24);
    Timer_CH0_dont_count_36_intermediate_stateintermediate_2_Timer_CH0_dont_count_362Timer_CH0_dont_count_36_assert: assert property(Timer_CH0_dont_count_36_intermediate_stateintermediate_2_Timer_CH0_dont_count_362Timer_CH0_dont_count_36);
    Timer_CH0_down_count_25_intermediate_stateintermediate_2_Timer_CH0_down_count_252Timer_CH0_down_count_25_assert: assert property(Timer_CH0_down_count_25_intermediate_stateintermediate_2_Timer_CH0_down_count_252Timer_CH0_down_count_25);
    Timer_CH0_dont_count_37_intermediate_stateintermediate_2_Timer_CH0_dont_count_372Timer_CH0_dont_count_37_assert: assert property(Timer_CH0_dont_count_37_intermediate_stateintermediate_2_Timer_CH0_dont_count_372Timer_CH0_dont_count_37);
    Timer_CH0_dont_count_38_intermediate_stateintermediate_2_Timer_CH0_dont_count_382Timer_CH0_dont_count_38_assert: assert property(Timer_CH0_dont_count_38_intermediate_stateintermediate_2_Timer_CH0_dont_count_382Timer_CH0_dont_count_38);
    Timer_CH0_dont_count_39_intermediate_stateintermediate_2_Timer_CH0_dont_count_392Timer_CH0_dont_count_39_assert: assert property(Timer_CH0_dont_count_39_intermediate_stateintermediate_2_Timer_CH0_dont_count_392Timer_CH0_dont_count_39);
    Timer_CH0_down_count_26_intermediate_stateintermediate_2_Timer_CH0_down_count_262Timer_CH0_down_count_26_assert: assert property(Timer_CH0_down_count_26_intermediate_stateintermediate_2_Timer_CH0_down_count_262Timer_CH0_down_count_26);
    Timer_CH0_down_count_27_intermediate_stateintermediate_2_Timer_CH0_down_count_272Timer_CH0_down_count_27_assert: assert property(Timer_CH0_down_count_27_intermediate_stateintermediate_2_Timer_CH0_down_count_272Timer_CH0_down_count_27);
    Timer_CH0_dont_count_40_intermediate_stateintermediate_2_Timer_CH0_dont_count_402Timer_CH0_dont_count_40_assert: assert property(Timer_CH0_dont_count_40_intermediate_stateintermediate_2_Timer_CH0_dont_count_402Timer_CH0_dont_count_40);
    Timer_CH0_down_count_28_intermediate_stateintermediate_2_Timer_CH0_down_count_282Timer_CH0_down_count_28_assert: assert property(Timer_CH0_down_count_28_intermediate_stateintermediate_2_Timer_CH0_down_count_282Timer_CH0_down_count_28);
    Timer_CH0_dont_count_41_intermediate_stateintermediate_2_Timer_CH0_dont_count_412Timer_CH0_dont_count_41_assert: assert property(Timer_CH0_dont_count_41_intermediate_stateintermediate_2_Timer_CH0_dont_count_412Timer_CH0_dont_count_41);
    Timer_CH0_down_count_29_intermediate_stateintermediate_2_Timer_CH0_down_count_292Timer_CH0_down_count_29_assert: assert property(Timer_CH0_down_count_29_intermediate_stateintermediate_2_Timer_CH0_down_count_292Timer_CH0_down_count_29);
    Timer_CH0_dont_count_42_intermediate_stateintermediate_2_Timer_CH0_dont_count_422Timer_CH0_dont_count_42_assert: assert property(Timer_CH0_dont_count_42_intermediate_stateintermediate_2_Timer_CH0_dont_count_422Timer_CH0_dont_count_42);
    Timer_CH0_reset_2_maxval_8_intermediate_stateintermediate_2_Timer_CH0_reset_2_maxval_82Timer_CH0_reset_2_maxval_8_assert: assert property(Timer_CH0_reset_2_maxval_8_intermediate_stateintermediate_2_Timer_CH0_reset_2_maxval_82Timer_CH0_reset_2_maxval_8);
    Timer_CH0_down_count_30_intermediate_stateintermediate_2_Timer_CH0_down_count_302Timer_CH0_down_count_30_assert: assert property(Timer_CH0_down_count_30_intermediate_stateintermediate_2_Timer_CH0_down_count_302Timer_CH0_down_count_30);
    Timer_CH0_dont_count_43_intermediate_stateintermediate_2_Timer_CH0_dont_count_432Timer_CH0_dont_count_43_assert: assert property(Timer_CH0_dont_count_43_intermediate_stateintermediate_2_Timer_CH0_dont_count_432Timer_CH0_dont_count_43);
    Timer_CH0_down_count_31_intermediate_stateintermediate_2_Timer_CH0_down_count_312Timer_CH0_down_count_31_assert: assert property(Timer_CH0_down_count_31_intermediate_stateintermediate_2_Timer_CH0_down_count_312Timer_CH0_down_count_31);
    Timer_CH0_dont_count_44_intermediate_stateintermediate_2_Timer_CH0_dont_count_442Timer_CH0_dont_count_44_assert: assert property(Timer_CH0_dont_count_44_intermediate_stateintermediate_2_Timer_CH0_dont_count_442Timer_CH0_dont_count_44);
    Timer_CH0_dont_count_45_intermediate_stateintermediate_2_Timer_CH0_dont_count_452Timer_CH0_dont_count_45_assert: assert property(Timer_CH0_dont_count_45_intermediate_stateintermediate_2_Timer_CH0_dont_count_452Timer_CH0_dont_count_45);
    Timer_CH0_dont_count_46_intermediate_stateintermediate_2_Timer_CH0_dont_count_462Timer_CH0_dont_count_46_assert: assert property(Timer_CH0_dont_count_46_intermediate_stateintermediate_2_Timer_CH0_dont_count_462Timer_CH0_dont_count_46);
    Timer_CH0_down_count_32_intermediate_stateintermediate_2_Timer_CH0_down_count_322Timer_CH0_down_count_32_assert: assert property(Timer_CH0_down_count_32_intermediate_stateintermediate_2_Timer_CH0_down_count_322Timer_CH0_down_count_32);
    Timer_CH0_down_count_33_intermediate_stateintermediate_2_Timer_CH0_down_count_332Timer_CH0_down_count_33_assert: assert property(Timer_CH0_down_count_33_intermediate_stateintermediate_2_Timer_CH0_down_count_332Timer_CH0_down_count_33);
    Timer_CH0_dont_count_47_intermediate_stateintermediate_2_Timer_CH0_dont_count_472Timer_CH0_dont_count_47_assert: assert property(Timer_CH0_dont_count_47_intermediate_stateintermediate_2_Timer_CH0_dont_count_472Timer_CH0_dont_count_47);
    Timer_CH0_down_count_34_intermediate_stateintermediate_2_Timer_CH0_down_count_342Timer_CH0_down_count_34_assert: assert property(Timer_CH0_down_count_34_intermediate_stateintermediate_2_Timer_CH0_down_count_342Timer_CH0_down_count_34);
    Timer_CH0_dont_count_48_intermediate_stateintermediate_2_Timer_CH0_dont_count_482Timer_CH0_dont_count_48_assert: assert property(Timer_CH0_dont_count_48_intermediate_stateintermediate_2_Timer_CH0_dont_count_482Timer_CH0_dont_count_48);
    Timer_CH0_down_count_35_intermediate_stateintermediate_2_Timer_CH0_down_count_352Timer_CH0_down_count_35_assert: assert property(Timer_CH0_down_count_35_intermediate_stateintermediate_2_Timer_CH0_down_count_352Timer_CH0_down_count_35);
    Timer_CH0_dont_count_49_intermediate_stateintermediate_2_Timer_CH0_dont_count_492Timer_CH0_dont_count_49_assert: assert property(Timer_CH0_dont_count_49_intermediate_stateintermediate_2_Timer_CH0_dont_count_492Timer_CH0_dont_count_49);
    Timer_CH0_reset_2_maxval_9_intermediate_stateintermediate_2_Timer_CH0_reset_2_maxval_92Timer_CH0_reset_2_maxval_9_assert: assert property(Timer_CH0_reset_2_maxval_9_intermediate_stateintermediate_2_Timer_CH0_reset_2_maxval_92Timer_CH0_reset_2_maxval_9);
    Timer_CH0_down_count_36_intermediate_stateintermediate_2_Timer_CH0_down_count_362Timer_CH0_down_count_36_assert: assert property(Timer_CH0_down_count_36_intermediate_stateintermediate_2_Timer_CH0_down_count_362Timer_CH0_down_count_36);
    Timer_CH0_dont_count_50_intermediate_stateintermediate_2_Timer_CH0_dont_count_502Timer_CH0_dont_count_50_assert: assert property(Timer_CH0_dont_count_50_intermediate_stateintermediate_2_Timer_CH0_dont_count_502Timer_CH0_dont_count_50);
    Timer_CH0_down_count_37_intermediate_stateintermediate_2_Timer_CH0_down_count_372Timer_CH0_down_count_37_assert: assert property(Timer_CH0_down_count_37_intermediate_stateintermediate_2_Timer_CH0_down_count_372Timer_CH0_down_count_37);
    Timer_CH0_dont_count_51_intermediate_stateintermediate_2_Timer_CH0_dont_count_512Timer_CH0_dont_count_51_assert: assert property(Timer_CH0_dont_count_51_intermediate_stateintermediate_2_Timer_CH0_dont_count_512Timer_CH0_dont_count_51);
    Timer_CH0_dont_count_52_intermediate_stateintermediate_2_Timer_CH0_dont_count_522Timer_CH0_dont_count_52_assert: assert property(Timer_CH0_dont_count_52_intermediate_stateintermediate_2_Timer_CH0_dont_count_522Timer_CH0_dont_count_52);
    Timer_CH0_dont_count_53_intermediate_stateintermediate_2_Timer_CH0_dont_count_532Timer_CH0_dont_count_53_assert: assert property(Timer_CH0_dont_count_53_intermediate_stateintermediate_2_Timer_CH0_dont_count_532Timer_CH0_dont_count_53);
    Timer_CH0_down_count_38_intermediate_stateintermediate_2_Timer_CH0_down_count_382Timer_CH0_down_count_38_assert: assert property(Timer_CH0_down_count_38_intermediate_stateintermediate_2_Timer_CH0_down_count_382Timer_CH0_down_count_38);
    Timer_CH0_down_count_39_intermediate_stateintermediate_2_Timer_CH0_down_count_392Timer_CH0_down_count_39_assert: assert property(Timer_CH0_down_count_39_intermediate_stateintermediate_2_Timer_CH0_down_count_392Timer_CH0_down_count_39);
    Timer_CH0_dont_count_54_intermediate_stateintermediate_2_Timer_CH0_dont_count_542Timer_CH0_dont_count_54_assert: assert property(Timer_CH0_dont_count_54_intermediate_stateintermediate_2_Timer_CH0_dont_count_542Timer_CH0_dont_count_54);
    Timer_CH0_down_count_40_intermediate_stateintermediate_2_Timer_CH0_down_count_402Timer_CH0_down_count_40_assert: assert property(Timer_CH0_down_count_40_intermediate_stateintermediate_2_Timer_CH0_down_count_402Timer_CH0_down_count_40);
    Timer_CH0_dont_count_55_intermediate_stateintermediate_2_Timer_CH0_dont_count_552Timer_CH0_dont_count_55_assert: assert property(Timer_CH0_dont_count_55_intermediate_stateintermediate_2_Timer_CH0_dont_count_552Timer_CH0_dont_count_55);
    Timer_CH0_down_count_41_intermediate_stateintermediate_2_Timer_CH0_down_count_412Timer_CH0_down_count_41_assert: assert property(Timer_CH0_down_count_41_intermediate_stateintermediate_2_Timer_CH0_down_count_412Timer_CH0_down_count_41);
    Timer_CH0_dont_count_56_intermediate_stateintermediate_2_Timer_CH0_dont_count_562Timer_CH0_dont_count_56_assert: assert property(Timer_CH0_dont_count_56_intermediate_stateintermediate_2_Timer_CH0_dont_count_562Timer_CH0_dont_count_56);
    Timer_CH0_reset_2_maxval_10_intermediate_stateintermediate_2_Timer_CH0_reset_2_maxval_102Timer_CH0_reset_2_maxval_10_assert: assert property(Timer_CH0_reset_2_maxval_10_intermediate_stateintermediate_2_Timer_CH0_reset_2_maxval_102Timer_CH0_reset_2_maxval_10);
    Timer_CH0_down_count_42_intermediate_stateintermediate_2_Timer_CH0_down_count_422Timer_CH0_down_count_42_assert: assert property(Timer_CH0_down_count_42_intermediate_stateintermediate_2_Timer_CH0_down_count_422Timer_CH0_down_count_42);
    Timer_CH0_dont_count_57_intermediate_stateintermediate_2_Timer_CH0_dont_count_572Timer_CH0_dont_count_57_assert: assert property(Timer_CH0_dont_count_57_intermediate_stateintermediate_2_Timer_CH0_dont_count_572Timer_CH0_dont_count_57);
    Timer_CH0_down_count_43_intermediate_stateintermediate_2_Timer_CH0_down_count_432Timer_CH0_down_count_43_assert: assert property(Timer_CH0_down_count_43_intermediate_stateintermediate_2_Timer_CH0_down_count_432Timer_CH0_down_count_43);
    Timer_CH0_dont_count_58_intermediate_stateintermediate_2_Timer_CH0_dont_count_582Timer_CH0_dont_count_58_assert: assert property(Timer_CH0_dont_count_58_intermediate_stateintermediate_2_Timer_CH0_dont_count_582Timer_CH0_dont_count_58);
    Timer_CH0_dont_count_59_intermediate_stateintermediate_2_Timer_CH0_dont_count_592Timer_CH0_dont_count_59_assert: assert property(Timer_CH0_dont_count_59_intermediate_stateintermediate_2_Timer_CH0_dont_count_592Timer_CH0_dont_count_59);
    Timer_CH0_dont_count_60_intermediate_stateintermediate_2_Timer_CH0_dont_count_602Timer_CH0_dont_count_60_assert: assert property(Timer_CH0_dont_count_60_intermediate_stateintermediate_2_Timer_CH0_dont_count_602Timer_CH0_dont_count_60);
    Timer_CH0_down_count_44_intermediate_stateintermediate_2_Timer_CH0_down_count_442Timer_CH0_down_count_44_assert: assert property(Timer_CH0_down_count_44_intermediate_stateintermediate_2_Timer_CH0_down_count_442Timer_CH0_down_count_44);
    Timer_CH0_down_count_45_intermediate_stateintermediate_2_Timer_CH0_down_count_452Timer_CH0_down_count_45_assert: assert property(Timer_CH0_down_count_45_intermediate_stateintermediate_2_Timer_CH0_down_count_452Timer_CH0_down_count_45);
    Timer_CH0_dont_count_61_intermediate_stateintermediate_2_Timer_CH0_dont_count_612Timer_CH0_dont_count_61_assert: assert property(Timer_CH0_dont_count_61_intermediate_stateintermediate_2_Timer_CH0_dont_count_612Timer_CH0_dont_count_61);
    Timer_CH0_down_count_46_intermediate_stateintermediate_2_Timer_CH0_down_count_462Timer_CH0_down_count_46_assert: assert property(Timer_CH0_down_count_46_intermediate_stateintermediate_2_Timer_CH0_down_count_462Timer_CH0_down_count_46);
    Timer_CH0_dont_count_62_intermediate_stateintermediate_2_Timer_CH0_dont_count_622Timer_CH0_dont_count_62_assert: assert property(Timer_CH0_dont_count_62_intermediate_stateintermediate_2_Timer_CH0_dont_count_622Timer_CH0_dont_count_62);
    Timer_CH0_down_count_47_intermediate_stateintermediate_2_Timer_CH0_down_count_472Timer_CH0_down_count_47_assert: assert property(Timer_CH0_down_count_47_intermediate_stateintermediate_2_Timer_CH0_down_count_472Timer_CH0_down_count_47);
    Timer_CH0_dont_count_63_intermediate_stateintermediate_2_Timer_CH0_dont_count_632Timer_CH0_dont_count_63_assert: assert property(Timer_CH0_dont_count_63_intermediate_stateintermediate_2_Timer_CH0_dont_count_632Timer_CH0_dont_count_63);
    Timer_CH1_dont_count_intermediate_stateintermediate_2_Timer_CH1_dont_count2Timer_CH1_dont_count_assert: assert property(Timer_CH1_dont_count_intermediate_stateintermediate_2_Timer_CH1_dont_count2Timer_CH1_dont_count);
    Timer_CH1_no_reset_2_maxval_intermediate_stateintermediate_2_Timer_CH1_no_reset_2_maxval2Timer_CH1_no_reset_2_maxval_assert: assert property(Timer_CH1_no_reset_2_maxval_intermediate_stateintermediate_2_Timer_CH1_no_reset_2_maxval2Timer_CH1_no_reset_2_maxval);
	Timer_CH1_reset_2_maxval_intermediate_stateintermediate_2_Timer_CH1_reset_2_maxval2Timer_CH1_reset_2_maxval_assert: assert property(Timer_CH1_reset_2_maxval_intermediate_stateintermediate_2_Timer_CH1_reset_2_maxval2Timer_CH1_reset_2_maxval);
    Timer_CH1_reset_2_maxval_1_intermediate_stateintermediate_2_Timer_CH1_reset_2_maxval_12Timer_CH1_reset_2_maxval_1_assert: assert property(Timer_CH1_reset_2_maxval_1_intermediate_stateintermediate_2_Timer_CH1_reset_2_maxval_12Timer_CH1_reset_2_maxval_1);
    Timer_CH1_dont_count_1_intermediate_stateintermediate_2_Timer_CH1_dont_count_12Timer_CH1_dont_count_1_assert: assert property(Timer_CH1_dont_count_1_intermediate_stateintermediate_2_Timer_CH1_dont_count_12Timer_CH1_dont_count_1);
    Timer_CH1_reset_2_maxval_2_intermediate_stateintermediate_2_Timer_CH1_reset_2_maxval_22Timer_CH1_reset_2_maxval_2_assert: assert property(Timer_CH1_reset_2_maxval_2_intermediate_stateintermediate_2_Timer_CH1_reset_2_maxval_22Timer_CH1_reset_2_maxval_2);
    Timer_CH1_dont_count_2_intermediate_stateintermediate_2_Timer_CH1_dont_count_22Timer_CH1_dont_count_2_assert: assert property(Timer_CH1_dont_count_2_intermediate_stateintermediate_2_Timer_CH1_dont_count_22Timer_CH1_dont_count_2);
    Timer_CH1_dont_count_3_intermediate_stateintermediate_2_Timer_CH1_dont_count_32Timer_CH1_dont_count_3_assert: assert property(Timer_CH1_dont_count_3_intermediate_stateintermediate_2_Timer_CH1_dont_count_32Timer_CH1_dont_count_3);
    Timer_CH1_dont_count_4_intermediate_stateintermediate_2_Timer_CH1_dont_count_42Timer_CH1_dont_count_4_assert: assert property(Timer_CH1_dont_count_4_intermediate_stateintermediate_2_Timer_CH1_dont_count_42Timer_CH1_dont_count_4);
    Timer_CH1_reset_2_maxval_3_intermediate_stateintermediate_2_Timer_CH1_reset_2_maxval_32Timer_CH1_reset_2_maxval_3_assert: assert property(Timer_CH1_reset_2_maxval_3_intermediate_stateintermediate_2_Timer_CH1_reset_2_maxval_32Timer_CH1_reset_2_maxval_3);
    Timer_CH1_dont_count_5_intermediate_stateintermediate_2_Timer_CH1_dont_count_52Timer_CH1_dont_count_5_assert: assert property(Timer_CH1_dont_count_5_intermediate_stateintermediate_2_Timer_CH1_dont_count_52Timer_CH1_dont_count_5);
    Timer_CH1_reset_2_maxval_4_intermediate_stateintermediate_2_Timer_CH1_reset_2_maxval_42Timer_CH1_reset_2_maxval_4_assert: assert property(Timer_CH1_reset_2_maxval_4_intermediate_stateintermediate_2_Timer_CH1_reset_2_maxval_42Timer_CH1_reset_2_maxval_4);
    Timer_CH1_dont_count_6_intermediate_stateintermediate_2_Timer_CH1_dont_count_62Timer_CH1_dont_count_6_assert: assert property(Timer_CH1_dont_count_6_intermediate_stateintermediate_2_Timer_CH1_dont_count_62Timer_CH1_dont_count_6);
    Timer_CH1_reset_2_maxval_5_intermediate_stateintermediate_2_Timer_CH1_reset_2_maxval_52Timer_CH1_reset_2_maxval_5_assert: assert property(Timer_CH1_reset_2_maxval_5_intermediate_stateintermediate_2_Timer_CH1_reset_2_maxval_52Timer_CH1_reset_2_maxval_5);
    Timer_CH1_dont_count_7_intermediate_stateintermediate_2_Timer_CH1_dont_count_72Timer_CH1_dont_count_7_assert: assert property(Timer_CH1_dont_count_7_intermediate_stateintermediate_2_Timer_CH1_dont_count_72Timer_CH1_dont_count_7);
    Timer_CH1_reset_2_maxval_6_intermediate_stateintermediate_2_Timer_CH1_reset_2_maxval_62Timer_CH1_reset_2_maxval_6_assert: assert property(Timer_CH1_reset_2_maxval_6_intermediate_stateintermediate_2_Timer_CH1_reset_2_maxval_62Timer_CH1_reset_2_maxval_6);
    Timer_CH1_down_count_intermediate_stateintermediate_2_Timer_CH1_down_count2Timer_CH1_down_count_assert: assert property(Timer_CH1_down_count_intermediate_stateintermediate_2_Timer_CH1_down_count2Timer_CH1_down_count);
    Timer_CH1_dont_count_8_intermediate_stateintermediate_2_Timer_CH1_dont_count_82Timer_CH1_dont_count_8_assert: assert property(Timer_CH1_dont_count_8_intermediate_stateintermediate_2_Timer_CH1_dont_count_82Timer_CH1_dont_count_8);
    Timer_CH1_down_count_1_intermediate_stateintermediate_2_Timer_CH1_down_count_12Timer_CH1_down_count_1_assert: assert property(Timer_CH1_down_count_1_intermediate_stateintermediate_2_Timer_CH1_down_count_12Timer_CH1_down_count_1);
    Timer_CH1_dont_count_9_intermediate_stateintermediate_2_Timer_CH1_dont_count_92Timer_CH1_dont_count_9_assert: assert property(Timer_CH1_dont_count_9_intermediate_stateintermediate_2_Timer_CH1_dont_count_92Timer_CH1_dont_count_9);
    Timer_CH1_dont_count_10_intermediate_stateintermediate_2_Timer_CH1_dont_count_102Timer_CH1_dont_count_10_assert: assert property(Timer_CH1_dont_count_10_intermediate_stateintermediate_2_Timer_CH1_dont_count_102Timer_CH1_dont_count_10);
    Timer_CH1_dont_count_11_intermediate_stateintermediate_2_Timer_CH1_dont_count_112Timer_CH1_dont_count_11_assert: assert property(Timer_CH1_dont_count_11_intermediate_stateintermediate_2_Timer_CH1_dont_count_112Timer_CH1_dont_count_11);
    Timer_CH1_down_count_2_intermediate_stateintermediate_2_Timer_CH1_down_count_22Timer_CH1_down_count_2_assert: assert property(Timer_CH1_down_count_2_intermediate_stateintermediate_2_Timer_CH1_down_count_22Timer_CH1_down_count_2);
    Timer_CH1_down_count_3_intermediate_stateintermediate_2_Timer_CH1_down_count_32Timer_CH1_down_count_3_assert: assert property(Timer_CH1_down_count_3_intermediate_stateintermediate_2_Timer_CH1_down_count_32Timer_CH1_down_count_3);
    Timer_CH1_dont_count_12_intermediate_stateintermediate_2_Timer_CH1_dont_count_122Timer_CH1_dont_count_12_assert: assert property(Timer_CH1_dont_count_12_intermediate_stateintermediate_2_Timer_CH1_dont_count_122Timer_CH1_dont_count_12);
    Timer_CH1_down_count_4_intermediate_stateintermediate_2_Timer_CH1_down_count_42Timer_CH1_down_count_4_assert: assert property(Timer_CH1_down_count_4_intermediate_stateintermediate_2_Timer_CH1_down_count_42Timer_CH1_down_count_4);
    Timer_CH1_dont_count_13_intermediate_stateintermediate_2_Timer_CH1_dont_count_132Timer_CH1_dont_count_13_assert: assert property(Timer_CH1_dont_count_13_intermediate_stateintermediate_2_Timer_CH1_dont_count_132Timer_CH1_dont_count_13);
    Timer_CH1_down_count_5_intermediate_stateintermediate_2_Timer_CH1_down_count_52Timer_CH1_down_count_5_assert: assert property(Timer_CH1_down_count_5_intermediate_stateintermediate_2_Timer_CH1_down_count_52Timer_CH1_down_count_5);
    Timer_CH1_dont_count_14_intermediate_stateintermediate_2_Timer_CH1_dont_count_142Timer_CH1_dont_count_14_assert: assert property(Timer_CH1_dont_count_14_intermediate_stateintermediate_2_Timer_CH1_dont_count_142Timer_CH1_dont_count_14);
    Timer_CH1_down_count_6_intermediate_stateintermediate_2_Timer_CH1_down_count_62Timer_CH1_down_count_6_assert: assert property(Timer_CH1_down_count_6_intermediate_stateintermediate_2_Timer_CH1_down_count_62Timer_CH1_down_count_6);
    Timer_CH1_dont_count_15_intermediate_stateintermediate_2_Timer_CH1_dont_count_152Timer_CH1_dont_count_15_assert: assert property(Timer_CH1_dont_count_15_intermediate_stateintermediate_2_Timer_CH1_dont_count_152Timer_CH1_dont_count_15);
    Timer_CH1_reset_2_maxval_7_intermediate_stateintermediate_2_Timer_CH1_reset_2_maxval_72Timer_CH1_reset_2_maxval_7_assert: assert property(Timer_CH1_reset_2_maxval_7_intermediate_stateintermediate_2_Timer_CH1_reset_2_maxval_72Timer_CH1_reset_2_maxval_7);
    Timer_CH1_down_count_7_intermediate_stateintermediate_2_Timer_CH1_down_count_72Timer_CH1_down_count_7_assert: assert property(Timer_CH1_down_count_7_intermediate_stateintermediate_2_Timer_CH1_down_count_72Timer_CH1_down_count_7);
    Timer_CH1_dont_count_16_intermediate_stateintermediate_2_Timer_CH1_dont_count_162Timer_CH1_dont_count_16_assert: assert property(Timer_CH1_dont_count_16_intermediate_stateintermediate_2_Timer_CH1_dont_count_162Timer_CH1_dont_count_16);
    Timer_CH1_down_count_8_intermediate_stateintermediate_2_Timer_CH1_down_count_82Timer_CH1_down_count_8_assert: assert property(Timer_CH1_down_count_8_intermediate_stateintermediate_2_Timer_CH1_down_count_82Timer_CH1_down_count_8);
    Timer_CH1_dont_count_17_intermediate_stateintermediate_2_Timer_CH1_dont_count_172Timer_CH1_dont_count_17_assert: assert property(Timer_CH1_dont_count_17_intermediate_stateintermediate_2_Timer_CH1_dont_count_172Timer_CH1_dont_count_17);
    Timer_CH1_dont_count_18_intermediate_stateintermediate_2_Timer_CH1_dont_count_182Timer_CH1_dont_count_18_assert: assert property(Timer_CH1_dont_count_18_intermediate_stateintermediate_2_Timer_CH1_dont_count_182Timer_CH1_dont_count_18);
    Timer_CH1_dont_count_19_intermediate_stateintermediate_2_Timer_CH1_dont_count_192Timer_CH1_dont_count_19_assert: assert property(Timer_CH1_dont_count_19_intermediate_stateintermediate_2_Timer_CH1_dont_count_192Timer_CH1_dont_count_19);
    Timer_CH1_down_count_9_intermediate_stateintermediate_2_Timer_CH1_down_count_92Timer_CH1_down_count_9_assert: assert property(Timer_CH1_down_count_9_intermediate_stateintermediate_2_Timer_CH1_down_count_92Timer_CH1_down_count_9);
    Timer_CH1_down_count_10_intermediate_stateintermediate_2_Timer_CH1_down_count_102Timer_CH1_down_count_10_assert: assert property(Timer_CH1_down_count_10_intermediate_stateintermediate_2_Timer_CH1_down_count_102Timer_CH1_down_count_10);
    Timer_CH1_dont_count_20_intermediate_stateintermediate_2_Timer_CH1_dont_count_202Timer_CH1_dont_count_20_assert: assert property(Timer_CH1_dont_count_20_intermediate_stateintermediate_2_Timer_CH1_dont_count_202Timer_CH1_dont_count_20);
    Timer_CH1_down_count_11_intermediate_stateintermediate_2_Timer_CH1_down_count_112Timer_CH1_down_count_11_assert: assert property(Timer_CH1_down_count_11_intermediate_stateintermediate_2_Timer_CH1_down_count_112Timer_CH1_down_count_11);
    Timer_CH1_dont_count_21_intermediate_stateintermediate_2_Timer_CH1_dont_count_212Timer_CH1_dont_count_21_assert: assert property(Timer_CH1_dont_count_21_intermediate_stateintermediate_2_Timer_CH1_dont_count_212Timer_CH1_dont_count_21);
    Timer_CH1_down_count_12_intermediate_stateintermediate_2_Timer_CH1_down_count_122Timer_CH1_down_count_12_assert: assert property(Timer_CH1_down_count_12_intermediate_stateintermediate_2_Timer_CH1_down_count_122Timer_CH1_down_count_12);
    Timer_CH1_dont_count_22_intermediate_stateintermediate_2_Timer_CH1_dont_count_222Timer_CH1_dont_count_22_assert: assert property(Timer_CH1_dont_count_22_intermediate_stateintermediate_2_Timer_CH1_dont_count_222Timer_CH1_dont_count_22);
    Timer_CH1_down_count_13_intermediate_stateintermediate_2_Timer_CH1_down_count_132Timer_CH1_down_count_13_assert: assert property(Timer_CH1_down_count_13_intermediate_stateintermediate_2_Timer_CH1_down_count_132Timer_CH1_down_count_13);
    Timer_CH1_dont_count_23_intermediate_stateintermediate_2_Timer_CH1_dont_count_232Timer_CH1_dont_count_23_assert: assert property(Timer_CH1_dont_count_23_intermediate_stateintermediate_2_Timer_CH1_dont_count_232Timer_CH1_dont_count_23);
    Timer_CH1_dont_count_24_intermediate_stateintermediate_2_Timer_CH1_dont_count_242Timer_CH1_dont_count_24_assert: assert property(Timer_CH1_dont_count_24_intermediate_stateintermediate_2_Timer_CH1_dont_count_242Timer_CH1_dont_count_24);
    Timer_CH1_dont_count_25_intermediate_stateintermediate_2_Timer_CH1_dont_count_252Timer_CH1_dont_count_25_assert: assert property(Timer_CH1_dont_count_25_intermediate_stateintermediate_2_Timer_CH1_dont_count_252Timer_CH1_dont_count_25);
    Timer_CH1_down_count_14_intermediate_stateintermediate_2_Timer_CH1_down_count_142Timer_CH1_down_count_14_assert: assert property(Timer_CH1_down_count_14_intermediate_stateintermediate_2_Timer_CH1_down_count_142Timer_CH1_down_count_14);
    Timer_CH1_down_count_15_intermediate_stateintermediate_2_Timer_CH1_down_count_152Timer_CH1_down_count_15_assert: assert property(Timer_CH1_down_count_15_intermediate_stateintermediate_2_Timer_CH1_down_count_152Timer_CH1_down_count_15);
    Timer_CH1_dont_count_26_intermediate_stateintermediate_2_Timer_CH1_dont_count_262Timer_CH1_dont_count_26_assert: assert property(Timer_CH1_dont_count_26_intermediate_stateintermediate_2_Timer_CH1_dont_count_262Timer_CH1_dont_count_26);
    Timer_CH1_down_count_16_intermediate_stateintermediate_2_Timer_CH1_down_count_162Timer_CH1_down_count_16_assert: assert property(Timer_CH1_down_count_16_intermediate_stateintermediate_2_Timer_CH1_down_count_162Timer_CH1_down_count_16);
    Timer_CH1_dont_count_27_intermediate_stateintermediate_2_Timer_CH1_dont_count_272Timer_CH1_dont_count_27_assert: assert property(Timer_CH1_dont_count_27_intermediate_stateintermediate_2_Timer_CH1_dont_count_272Timer_CH1_dont_count_27);
    Timer_CH1_down_count_17_intermediate_stateintermediate_2_Timer_CH1_down_count_172Timer_CH1_down_count_17_assert: assert property(Timer_CH1_down_count_17_intermediate_stateintermediate_2_Timer_CH1_down_count_172Timer_CH1_down_count_17);
    Timer_CH1_dont_count_28_intermediate_stateintermediate_2_Timer_CH1_dont_count_282Timer_CH1_dont_count_28_assert: assert property(Timer_CH1_dont_count_28_intermediate_stateintermediate_2_Timer_CH1_dont_count_282Timer_CH1_dont_count_28);
    Timer_CH1_down_count_18_intermediate_stateintermediate_2_Timer_CH1_down_count_182Timer_CH1_down_count_18_assert: assert property(Timer_CH1_down_count_18_intermediate_stateintermediate_2_Timer_CH1_down_count_182Timer_CH1_down_count_18);
    Timer_CH1_dont_count_29_intermediate_stateintermediate_2_Timer_CH1_dont_count_292Timer_CH1_dont_count_29_assert: assert property(Timer_CH1_dont_count_29_intermediate_stateintermediate_2_Timer_CH1_dont_count_292Timer_CH1_dont_count_29);
    Timer_CH1_down_count_19_intermediate_stateintermediate_2_Timer_CH1_down_count_192Timer_CH1_down_count_19_assert: assert property(Timer_CH1_down_count_19_intermediate_stateintermediate_2_Timer_CH1_down_count_192Timer_CH1_down_count_19);
    Timer_CH1_dont_count_30_intermediate_stateintermediate_2_Timer_CH1_dont_count_302Timer_CH1_dont_count_30_assert: assert property(Timer_CH1_dont_count_30_intermediate_stateintermediate_2_Timer_CH1_dont_count_302Timer_CH1_dont_count_30);
    Timer_CH1_dont_count_31_intermediate_stateintermediate_2_Timer_CH1_dont_count_312Timer_CH1_dont_count_31_assert: assert property(Timer_CH1_dont_count_31_intermediate_stateintermediate_2_Timer_CH1_dont_count_312Timer_CH1_dont_count_31);
    Timer_CH1_dont_count_32_intermediate_stateintermediate_2_Timer_CH1_dont_count_322Timer_CH1_dont_count_32_assert: assert property(Timer_CH1_dont_count_32_intermediate_stateintermediate_2_Timer_CH1_dont_count_322Timer_CH1_dont_count_32);
    Timer_CH1_down_count_20_intermediate_stateintermediate_2_Timer_CH1_down_count_202Timer_CH1_down_count_20_assert: assert property(Timer_CH1_down_count_20_intermediate_stateintermediate_2_Timer_CH1_down_count_202Timer_CH1_down_count_20);
    Timer_CH1_down_count_21_intermediate_stateintermediate_2_Timer_CH1_down_count_212Timer_CH1_down_count_21_assert: assert property(Timer_CH1_down_count_21_intermediate_stateintermediate_2_Timer_CH1_down_count_212Timer_CH1_down_count_21);
    Timer_CH1_dont_count_33_intermediate_stateintermediate_2_Timer_CH1_dont_count_332Timer_CH1_dont_count_33_assert: assert property(Timer_CH1_dont_count_33_intermediate_stateintermediate_2_Timer_CH1_dont_count_332Timer_CH1_dont_count_33);
    Timer_CH1_down_count_22_intermediate_stateintermediate_2_Timer_CH1_down_count_222Timer_CH1_down_count_22_assert: assert property(Timer_CH1_down_count_22_intermediate_stateintermediate_2_Timer_CH1_down_count_222Timer_CH1_down_count_22);
    Timer_CH1_dont_count_34_intermediate_stateintermediate_2_Timer_CH1_dont_count_342Timer_CH1_dont_count_34_assert: assert property(Timer_CH1_dont_count_34_intermediate_stateintermediate_2_Timer_CH1_dont_count_342Timer_CH1_dont_count_34);
    Timer_CH1_down_count_23_intermediate_stateintermediate_2_Timer_CH1_down_count_232Timer_CH1_down_count_23_assert: assert property(Timer_CH1_down_count_23_intermediate_stateintermediate_2_Timer_CH1_down_count_232Timer_CH1_down_count_23);
    Timer_CH1_dont_count_35_intermediate_stateintermediate_2_Timer_CH1_dont_count_352Timer_CH1_dont_count_35_assert: assert property(Timer_CH1_dont_count_35_intermediate_stateintermediate_2_Timer_CH1_dont_count_352Timer_CH1_dont_count_35);
    Timer_CH1_down_count_24_intermediate_stateintermediate_2_Timer_CH1_down_count_242Timer_CH1_down_count_24_assert: assert property(Timer_CH1_down_count_24_intermediate_stateintermediate_2_Timer_CH1_down_count_242Timer_CH1_down_count_24);
    Timer_CH1_dont_count_36_intermediate_stateintermediate_2_Timer_CH1_dont_count_362Timer_CH1_dont_count_36_assert: assert property(Timer_CH1_dont_count_36_intermediate_stateintermediate_2_Timer_CH1_dont_count_362Timer_CH1_dont_count_36);
    Timer_CH1_down_count_25_intermediate_stateintermediate_2_Timer_CH1_down_count_252Timer_CH1_down_count_25_assert: assert property(Timer_CH1_down_count_25_intermediate_stateintermediate_2_Timer_CH1_down_count_252Timer_CH1_down_count_25);
    Timer_CH1_dont_count_37_intermediate_stateintermediate_2_Timer_CH1_dont_count_372Timer_CH1_dont_count_37_assert: assert property(Timer_CH1_dont_count_37_intermediate_stateintermediate_2_Timer_CH1_dont_count_372Timer_CH1_dont_count_37);
    Timer_CH1_dont_count_38_intermediate_stateintermediate_2_Timer_CH1_dont_count_382Timer_CH1_dont_count_38_assert: assert property(Timer_CH1_dont_count_38_intermediate_stateintermediate_2_Timer_CH1_dont_count_382Timer_CH1_dont_count_38);
    Timer_CH1_dont_count_39_intermediate_stateintermediate_2_Timer_CH1_dont_count_392Timer_CH1_dont_count_39_assert: assert property(Timer_CH1_dont_count_39_intermediate_stateintermediate_2_Timer_CH1_dont_count_392Timer_CH1_dont_count_39);
    Timer_CH1_down_count_26_intermediate_stateintermediate_2_Timer_CH1_down_count_262Timer_CH1_down_count_26_assert: assert property(Timer_CH1_down_count_26_intermediate_stateintermediate_2_Timer_CH1_down_count_262Timer_CH1_down_count_26);
    Timer_CH1_down_count_27_intermediate_stateintermediate_2_Timer_CH1_down_count_272Timer_CH1_down_count_27_assert: assert property(Timer_CH1_down_count_27_intermediate_stateintermediate_2_Timer_CH1_down_count_272Timer_CH1_down_count_27);
    Timer_CH1_dont_count_40_intermediate_stateintermediate_2_Timer_CH1_dont_count_402Timer_CH1_dont_count_40_assert: assert property(Timer_CH1_dont_count_40_intermediate_stateintermediate_2_Timer_CH1_dont_count_402Timer_CH1_dont_count_40);
    Timer_CH1_down_count_28_intermediate_stateintermediate_2_Timer_CH1_down_count_282Timer_CH1_down_count_28_assert: assert property(Timer_CH1_down_count_28_intermediate_stateintermediate_2_Timer_CH1_down_count_282Timer_CH1_down_count_28);
    Timer_CH1_dont_count_41_intermediate_stateintermediate_2_Timer_CH1_dont_count_412Timer_CH1_dont_count_41_assert: assert property(Timer_CH1_dont_count_41_intermediate_stateintermediate_2_Timer_CH1_dont_count_412Timer_CH1_dont_count_41);
    Timer_CH1_down_count_29_intermediate_stateintermediate_2_Timer_CH1_down_count_292Timer_CH1_down_count_29_assert: assert property(Timer_CH1_down_count_29_intermediate_stateintermediate_2_Timer_CH1_down_count_292Timer_CH1_down_count_29);
    Timer_CH1_dont_count_42_intermediate_stateintermediate_2_Timer_CH1_dont_count_422Timer_CH1_dont_count_42_assert: assert property(Timer_CH1_dont_count_42_intermediate_stateintermediate_2_Timer_CH1_dont_count_422Timer_CH1_dont_count_42);
    Timer_CH1_reset_2_maxval_8_intermediate_stateintermediate_2_Timer_CH1_reset_2_maxval_82Timer_CH1_reset_2_maxval_8_assert: assert property(Timer_CH1_reset_2_maxval_8_intermediate_stateintermediate_2_Timer_CH1_reset_2_maxval_82Timer_CH1_reset_2_maxval_8);
    Timer_CH1_down_count_30_intermediate_stateintermediate_2_Timer_CH1_down_count_302Timer_CH1_down_count_30_assert: assert property(Timer_CH1_down_count_30_intermediate_stateintermediate_2_Timer_CH1_down_count_302Timer_CH1_down_count_30);
    Timer_CH1_dont_count_43_intermediate_stateintermediate_2_Timer_CH1_dont_count_432Timer_CH1_dont_count_43_assert: assert property(Timer_CH1_dont_count_43_intermediate_stateintermediate_2_Timer_CH1_dont_count_432Timer_CH1_dont_count_43);
    Timer_CH1_down_count_31_intermediate_stateintermediate_2_Timer_CH1_down_count_312Timer_CH1_down_count_31_assert: assert property(Timer_CH1_down_count_31_intermediate_stateintermediate_2_Timer_CH1_down_count_312Timer_CH1_down_count_31);
    Timer_CH1_dont_count_44_intermediate_stateintermediate_2_Timer_CH1_dont_count_442Timer_CH1_dont_count_44_assert: assert property(Timer_CH1_dont_count_44_intermediate_stateintermediate_2_Timer_CH1_dont_count_442Timer_CH1_dont_count_44);
    Timer_CH1_dont_count_45_intermediate_stateintermediate_2_Timer_CH1_dont_count_452Timer_CH1_dont_count_45_assert: assert property(Timer_CH1_dont_count_45_intermediate_stateintermediate_2_Timer_CH1_dont_count_452Timer_CH1_dont_count_45);
    Timer_CH1_dont_count_46_intermediate_stateintermediate_2_Timer_CH1_dont_count_462Timer_CH1_dont_count_46_assert: assert property(Timer_CH1_dont_count_46_intermediate_stateintermediate_2_Timer_CH1_dont_count_462Timer_CH1_dont_count_46);
    Timer_CH1_down_count_32_intermediate_stateintermediate_2_Timer_CH1_down_count_322Timer_CH1_down_count_32_assert: assert property(Timer_CH1_down_count_32_intermediate_stateintermediate_2_Timer_CH1_down_count_322Timer_CH1_down_count_32);
    Timer_CH1_down_count_33_intermediate_stateintermediate_2_Timer_CH1_down_count_332Timer_CH1_down_count_33_assert: assert property(Timer_CH1_down_count_33_intermediate_stateintermediate_2_Timer_CH1_down_count_332Timer_CH1_down_count_33);
    Timer_CH1_dont_count_47_intermediate_stateintermediate_2_Timer_CH1_dont_count_472Timer_CH1_dont_count_47_assert: assert property(Timer_CH1_dont_count_47_intermediate_stateintermediate_2_Timer_CH1_dont_count_472Timer_CH1_dont_count_47);
    Timer_CH1_down_count_34_intermediate_stateintermediate_2_Timer_CH1_down_count_342Timer_CH1_down_count_34_assert: assert property(Timer_CH1_down_count_34_intermediate_stateintermediate_2_Timer_CH1_down_count_342Timer_CH1_down_count_34);
    Timer_CH1_dont_count_48_intermediate_stateintermediate_2_Timer_CH1_dont_count_482Timer_CH1_dont_count_48_assert: assert property(Timer_CH1_dont_count_48_intermediate_stateintermediate_2_Timer_CH1_dont_count_482Timer_CH1_dont_count_48);
    Timer_CH1_down_count_35_intermediate_stateintermediate_2_Timer_CH1_down_count_352Timer_CH1_down_count_35_assert: assert property(Timer_CH1_down_count_35_intermediate_stateintermediate_2_Timer_CH1_down_count_352Timer_CH1_down_count_35);
    Timer_CH1_dont_count_49_intermediate_stateintermediate_2_Timer_CH1_dont_count_492Timer_CH1_dont_count_49_assert: assert property(Timer_CH1_dont_count_49_intermediate_stateintermediate_2_Timer_CH1_dont_count_492Timer_CH1_dont_count_49);
    Timer_CH1_reset_2_maxval_9_intermediate_stateintermediate_2_Timer_CH1_reset_2_maxval_92Timer_CH1_reset_2_maxval_9_assert: assert property(Timer_CH1_reset_2_maxval_9_intermediate_stateintermediate_2_Timer_CH1_reset_2_maxval_92Timer_CH1_reset_2_maxval_9);
    Timer_CH1_down_count_36_intermediate_stateintermediate_2_Timer_CH1_down_count_362Timer_CH1_down_count_36_assert: assert property(Timer_CH1_down_count_36_intermediate_stateintermediate_2_Timer_CH1_down_count_362Timer_CH1_down_count_36);
    Timer_CH1_dont_count_50_intermediate_stateintermediate_2_Timer_CH1_dont_count_502Timer_CH1_dont_count_50_assert: assert property(Timer_CH1_dont_count_50_intermediate_stateintermediate_2_Timer_CH1_dont_count_502Timer_CH1_dont_count_50);
    Timer_CH1_down_count_37_intermediate_stateintermediate_2_Timer_CH1_down_count_372Timer_CH1_down_count_37_assert: assert property(Timer_CH1_down_count_37_intermediate_stateintermediate_2_Timer_CH1_down_count_372Timer_CH1_down_count_37);
    Timer_CH1_dont_count_51_intermediate_stateintermediate_2_Timer_CH1_dont_count_512Timer_CH1_dont_count_51_assert: assert property(Timer_CH1_dont_count_51_intermediate_stateintermediate_2_Timer_CH1_dont_count_512Timer_CH1_dont_count_51);
    Timer_CH1_dont_count_52_intermediate_stateintermediate_2_Timer_CH1_dont_count_522Timer_CH1_dont_count_52_assert: assert property(Timer_CH1_dont_count_52_intermediate_stateintermediate_2_Timer_CH1_dont_count_522Timer_CH1_dont_count_52);
    Timer_CH1_dont_count_53_intermediate_stateintermediate_2_Timer_CH1_dont_count_532Timer_CH1_dont_count_53_assert: assert property(Timer_CH1_dont_count_53_intermediate_stateintermediate_2_Timer_CH1_dont_count_532Timer_CH1_dont_count_53);
    Timer_CH1_down_count_38_intermediate_stateintermediate_2_Timer_CH1_down_count_382Timer_CH1_down_count_38_assert: assert property(Timer_CH1_down_count_38_intermediate_stateintermediate_2_Timer_CH1_down_count_382Timer_CH1_down_count_38);
    Timer_CH1_down_count_39_intermediate_stateintermediate_2_Timer_CH1_down_count_392Timer_CH1_down_count_39_assert: assert property(Timer_CH1_down_count_39_intermediate_stateintermediate_2_Timer_CH1_down_count_392Timer_CH1_down_count_39);
    Timer_CH1_dont_count_54_intermediate_stateintermediate_2_Timer_CH1_dont_count_542Timer_CH1_dont_count_54_assert: assert property(Timer_CH1_dont_count_54_intermediate_stateintermediate_2_Timer_CH1_dont_count_542Timer_CH1_dont_count_54);
    Timer_CH1_down_count_40_intermediate_stateintermediate_2_Timer_CH1_down_count_402Timer_CH1_down_count_40_assert: assert property(Timer_CH1_down_count_40_intermediate_stateintermediate_2_Timer_CH1_down_count_402Timer_CH1_down_count_40);
    Timer_CH1_dont_count_55_intermediate_stateintermediate_2_Timer_CH1_dont_count_552Timer_CH1_dont_count_55_assert: assert property(Timer_CH1_dont_count_55_intermediate_stateintermediate_2_Timer_CH1_dont_count_552Timer_CH1_dont_count_55);
    Timer_CH1_down_count_41_intermediate_stateintermediate_2_Timer_CH1_down_count_412Timer_CH1_down_count_41_assert: assert property(Timer_CH1_down_count_41_intermediate_stateintermediate_2_Timer_CH1_down_count_412Timer_CH1_down_count_41);
    Timer_CH1_dont_count_56_intermediate_stateintermediate_2_Timer_CH1_dont_count_562Timer_CH1_dont_count_56_assert: assert property(Timer_CH1_dont_count_56_intermediate_stateintermediate_2_Timer_CH1_dont_count_562Timer_CH1_dont_count_56);
    Timer_CH1_reset_2_maxval_10_intermediate_stateintermediate_2_Timer_CH1_reset_2_maxval_102Timer_CH1_reset_2_maxval_10_assert: assert property(Timer_CH1_reset_2_maxval_10_intermediate_stateintermediate_2_Timer_CH1_reset_2_maxval_102Timer_CH1_reset_2_maxval_10);
    Timer_CH1_down_count_42_intermediate_stateintermediate_2_Timer_CH1_down_count_422Timer_CH1_down_count_42_assert: assert property(Timer_CH1_down_count_42_intermediate_stateintermediate_2_Timer_CH1_down_count_422Timer_CH1_down_count_42);
    Timer_CH1_dont_count_57_intermediate_stateintermediate_2_Timer_CH1_dont_count_572Timer_CH1_dont_count_57_assert: assert property(Timer_CH1_dont_count_57_intermediate_stateintermediate_2_Timer_CH1_dont_count_572Timer_CH1_dont_count_57);
    Timer_CH1_down_count_43_intermediate_stateintermediate_2_Timer_CH1_down_count_432Timer_CH1_down_count_43_assert: assert property(Timer_CH1_down_count_43_intermediate_stateintermediate_2_Timer_CH1_down_count_432Timer_CH1_down_count_43);
    Timer_CH1_dont_count_58_intermediate_stateintermediate_2_Timer_CH1_dont_count_582Timer_CH1_dont_count_58_assert: assert property(Timer_CH1_dont_count_58_intermediate_stateintermediate_2_Timer_CH1_dont_count_582Timer_CH1_dont_count_58);
    Timer_CH1_dont_count_59_intermediate_stateintermediate_2_Timer_CH1_dont_count_592Timer_CH1_dont_count_59_assert: assert property(Timer_CH1_dont_count_59_intermediate_stateintermediate_2_Timer_CH1_dont_count_592Timer_CH1_dont_count_59);
    Timer_CH1_dont_count_60_intermediate_stateintermediate_2_Timer_CH1_dont_count_602Timer_CH1_dont_count_60_assert: assert property(Timer_CH1_dont_count_60_intermediate_stateintermediate_2_Timer_CH1_dont_count_602Timer_CH1_dont_count_60);
    Timer_CH1_down_count_44_intermediate_stateintermediate_2_Timer_CH1_down_count_442Timer_CH1_down_count_44_assert: assert property(Timer_CH1_down_count_44_intermediate_stateintermediate_2_Timer_CH1_down_count_442Timer_CH1_down_count_44);
    Timer_CH1_down_count_45_intermediate_stateintermediate_2_Timer_CH1_down_count_452Timer_CH1_down_count_45_assert: assert property(Timer_CH1_down_count_45_intermediate_stateintermediate_2_Timer_CH1_down_count_452Timer_CH1_down_count_45);
    Timer_CH1_dont_count_61_intermediate_stateintermediate_2_Timer_CH1_dont_count_612Timer_CH1_dont_count_61_assert: assert property(Timer_CH1_dont_count_61_intermediate_stateintermediate_2_Timer_CH1_dont_count_612Timer_CH1_dont_count_61);
    Timer_CH1_down_count_46_intermediate_stateintermediate_2_Timer_CH1_down_count_462Timer_CH1_down_count_46_assert: assert property(Timer_CH1_down_count_46_intermediate_stateintermediate_2_Timer_CH1_down_count_462Timer_CH1_down_count_46);
    Timer_CH1_dont_count_62_intermediate_stateintermediate_2_Timer_CH1_dont_count_622Timer_CH1_dont_count_62_assert: assert property(Timer_CH1_dont_count_62_intermediate_stateintermediate_2_Timer_CH1_dont_count_622Timer_CH1_dont_count_62);
    Timer_CH1_down_count_47_intermediate_stateintermediate_2_Timer_CH1_down_count_472Timer_CH1_down_count_47_assert: assert property(Timer_CH1_down_count_47_intermediate_stateintermediate_2_Timer_CH1_down_count_472Timer_CH1_down_count_47);
    Timer_CH1_dont_count_63_intermediate_stateintermediate_2_Timer_CH1_dont_count_632Timer_CH1_dont_count_63_assert: assert property(Timer_CH1_dont_count_63_intermediate_stateintermediate_2_Timer_CH1_dont_count_632Timer_CH1_dont_count_63);
    Timer_CH0_capture_CCUVAL0_intermediate_stateintermediate_2_Timer_CH0_capture_CCUVAL02Timer_CH0_capture_CCUVAL0_assert: assert property(Timer_CH0_capture_CCUVAL0_intermediate_stateintermediate_2_Timer_CH0_capture_CCUVAL02Timer_CH0_capture_CCUVAL0);
    Timer_CH0_capture_CCUVAL0_intermediate_stateintermediate_2_Timer_CH0_capture_CCUVAL02Timer_CH0_capture_CCUVAL0_1_assert: assert property(Timer_CH0_capture_CCUVAL0_intermediate_stateintermediate_2_Timer_CH0_capture_CCUVAL02Timer_CH0_capture_CCUVAL0_1);
    Timer_CH0_dont_capture_CCUVAL0_intermediate_stateintermediate_2_Timer_CH0_dont_capture_CCUVAL02Timer_CH0_dont_capture_CCUVAL0_assert: assert property(Timer_CH0_dont_capture_CCUVAL0_intermediate_stateintermediate_2_Timer_CH0_dont_capture_CCUVAL02Timer_CH0_dont_capture_CCUVAL0);
    Timer_CH0_dont_capture_CCUVAL0_intermediate_stateintermediate_2_Timer_CH0_dont_capture_CCUVAL02Timer_CH0_dont_capture_CCUVAL0_1_assert: assert property(Timer_CH0_dont_capture_CCUVAL0_intermediate_stateintermediate_2_Timer_CH0_dont_capture_CCUVAL02Timer_CH0_dont_capture_CCUVAL0_1);
    Timer_CH0_capture_CCUVAL0_1_intermediate_stateintermediate_2_Timer_CH0_capture_CCUVAL0_12Timer_CH0_capture_CCUVAL0_1_assert: assert property(Timer_CH0_capture_CCUVAL0_1_intermediate_stateintermediate_2_Timer_CH0_capture_CCUVAL0_12Timer_CH0_capture_CCUVAL0_1);
    Timer_CH0_capture_CCUVAL0_1_intermediate_stateintermediate_2_Timer_CH0_capture_CCUVAL0_12Timer_CH0_capture_CCUVAL0_1_1_assert: assert property(Timer_CH0_capture_CCUVAL0_1_intermediate_stateintermediate_2_Timer_CH0_capture_CCUVAL0_12Timer_CH0_capture_CCUVAL0_1_1);
    Timer_CH0_dont_capture_CCUVAL0_1_intermediate_stateintermediate_2_Timer_CH0_dont_capture_CCUVAL0_12Timer_CH0_dont_capture_CCUVAL0_1_assert: assert property(Timer_CH0_dont_capture_CCUVAL0_1_intermediate_stateintermediate_2_Timer_CH0_dont_capture_CCUVAL0_12Timer_CH0_dont_capture_CCUVAL0_1);
    Timer_CH0_dont_capture_CCUVAL0_1_intermediate_stateintermediate_2_Timer_CH0_dont_capture_CCUVAL0_12Timer_CH0_dont_capture_CCUVAL0_1_1_assert: assert property(Timer_CH0_dont_capture_CCUVAL0_1_intermediate_stateintermediate_2_Timer_CH0_dont_capture_CCUVAL0_12Timer_CH0_dont_capture_CCUVAL0_1_1);
    Timer_CH0_dont_capture_CCUVAL0_2_intermediate_stateintermediate_2_Timer_CH0_dont_capture_CCUVAL0_22Timer_CH0_dont_capture_CCUVAL0_2_assert: assert property(Timer_CH0_dont_capture_CCUVAL0_2_intermediate_stateintermediate_2_Timer_CH0_dont_capture_CCUVAL0_22Timer_CH0_dont_capture_CCUVAL0_2);
    Timer_CH0_dont_capture_CCUVAL0_2_intermediate_stateintermediate_2_Timer_CH0_dont_capture_CCUVAL0_22Timer_CH0_dont_capture_CCUVAL0_2_1_assert: assert property(Timer_CH0_dont_capture_CCUVAL0_2_intermediate_stateintermediate_2_Timer_CH0_dont_capture_CCUVAL0_22Timer_CH0_dont_capture_CCUVAL0_2_1);
    Timer_CH0_dont_capture_CCUVAL0_3_intermediate_stateintermediate_2_Timer_CH0_dont_capture_CCUVAL0_32Timer_CH0_dont_capture_CCUVAL0_3_assert: assert property(Timer_CH0_dont_capture_CCUVAL0_3_intermediate_stateintermediate_2_Timer_CH0_dont_capture_CCUVAL0_32Timer_CH0_dont_capture_CCUVAL0_3);
    Timer_CH0_dont_capture_CCUVAL0_3_intermediate_stateintermediate_2_Timer_CH0_dont_capture_CCUVAL0_32Timer_CH0_dont_capture_CCUVAL0_3_1_assert: assert property(Timer_CH0_dont_capture_CCUVAL0_3_intermediate_stateintermediate_2_Timer_CH0_dont_capture_CCUVAL0_32Timer_CH0_dont_capture_CCUVAL0_3_1);
    Timer_CH0_dont_capture_CCUVAL0_4_intermediate_stateintermediate_2_Timer_CH0_dont_capture_CCUVAL0_42Timer_CH0_dont_capture_CCUVAL0_4_assert: assert property(Timer_CH0_dont_capture_CCUVAL0_4_intermediate_stateintermediate_2_Timer_CH0_dont_capture_CCUVAL0_42Timer_CH0_dont_capture_CCUVAL0_4);
    Timer_CH0_dont_capture_CCUVAL0_4_intermediate_stateintermediate_2_Timer_CH0_dont_capture_CCUVAL0_42Timer_CH0_dont_capture_CCUVAL0_4_1_assert: assert property(Timer_CH0_dont_capture_CCUVAL0_4_intermediate_stateintermediate_2_Timer_CH0_dont_capture_CCUVAL0_42Timer_CH0_dont_capture_CCUVAL0_4_1);
    Timer_CH0_capture_CCUVAL0_2_intermediate_stateintermediate_2_Timer_CH0_capture_CCUVAL0_22Timer_CH0_capture_CCUVAL0_2_assert: assert property(Timer_CH0_capture_CCUVAL0_2_intermediate_stateintermediate_2_Timer_CH0_capture_CCUVAL0_22Timer_CH0_capture_CCUVAL0_2);
    Timer_CH0_capture_CCUVAL0_2_intermediate_stateintermediate_2_Timer_CH0_capture_CCUVAL0_22Timer_CH0_capture_CCUVAL0_2_1_assert: assert property(Timer_CH0_capture_CCUVAL0_2_intermediate_stateintermediate_2_Timer_CH0_capture_CCUVAL0_22Timer_CH0_capture_CCUVAL0_2_1);
    Timer_CH0_dont_capture_CCUVAL0_5_intermediate_stateintermediate_2_Timer_CH0_dont_capture_CCUVAL0_52Timer_CH0_dont_capture_CCUVAL0_5_assert: assert property(Timer_CH0_dont_capture_CCUVAL0_5_intermediate_stateintermediate_2_Timer_CH0_dont_capture_CCUVAL0_52Timer_CH0_dont_capture_CCUVAL0_5);
    Timer_CH0_dont_capture_CCUVAL0_5_intermediate_stateintermediate_2_Timer_CH0_dont_capture_CCUVAL0_52Timer_CH0_dont_capture_CCUVAL0_5_1_assert: assert property(Timer_CH0_dont_capture_CCUVAL0_5_intermediate_stateintermediate_2_Timer_CH0_dont_capture_CCUVAL0_52Timer_CH0_dont_capture_CCUVAL0_5_1);
    Timer_CH0_capture_CCUVAL0_3_intermediate_stateintermediate_2_Timer_CH0_capture_CCUVAL0_32Timer_CH0_capture_CCUVAL0_3_assert: assert property(Timer_CH0_capture_CCUVAL0_3_intermediate_stateintermediate_2_Timer_CH0_capture_CCUVAL0_32Timer_CH0_capture_CCUVAL0_3);
    Timer_CH0_capture_CCUVAL0_3_intermediate_stateintermediate_2_Timer_CH0_capture_CCUVAL0_32Timer_CH0_capture_CCUVAL0_3_1_assert: assert property(Timer_CH0_capture_CCUVAL0_3_intermediate_stateintermediate_2_Timer_CH0_capture_CCUVAL0_32Timer_CH0_capture_CCUVAL0_3_1);
    Timer_CH0_dont_capture_CCUVAL0_6_intermediate_stateintermediate_2_Timer_CH0_dont_capture_CCUVAL0_62Timer_CH0_dont_capture_CCUVAL0_6_assert: assert property(Timer_CH0_dont_capture_CCUVAL0_6_intermediate_stateintermediate_2_Timer_CH0_dont_capture_CCUVAL0_62Timer_CH0_dont_capture_CCUVAL0_6);
    Timer_CH0_dont_capture_CCUVAL0_6_intermediate_stateintermediate_2_Timer_CH0_dont_capture_CCUVAL0_62Timer_CH0_dont_capture_CCUVAL0_6_1_assert: assert property(Timer_CH0_dont_capture_CCUVAL0_6_intermediate_stateintermediate_2_Timer_CH0_dont_capture_CCUVAL0_62Timer_CH0_dont_capture_CCUVAL0_6_1);
    Timer_CH0_capture_CCUVAL0_4_intermediate_stateintermediate_2_Timer_CH0_capture_CCUVAL0_42Timer_CH0_capture_CCUVAL0_4_assert: assert property(Timer_CH0_capture_CCUVAL0_4_intermediate_stateintermediate_2_Timer_CH0_capture_CCUVAL0_42Timer_CH0_capture_CCUVAL0_4);
    Timer_CH0_capture_CCUVAL0_4_intermediate_stateintermediate_2_Timer_CH0_capture_CCUVAL0_42Timer_CH0_capture_CCUVAL0_4_1_assert: assert property(Timer_CH0_capture_CCUVAL0_4_intermediate_stateintermediate_2_Timer_CH0_capture_CCUVAL0_42Timer_CH0_capture_CCUVAL0_4_1);
    Timer_CH0_dont_capture_CCUVAL0_7_intermediate_stateintermediate_2_Timer_CH0_dont_capture_CCUVAL0_72Timer_CH0_dont_capture_CCUVAL0_7_assert: assert property(Timer_CH0_dont_capture_CCUVAL0_7_intermediate_stateintermediate_2_Timer_CH0_dont_capture_CCUVAL0_72Timer_CH0_dont_capture_CCUVAL0_7);
    Timer_CH0_dont_capture_CCUVAL0_7_intermediate_stateintermediate_2_Timer_CH0_dont_capture_CCUVAL0_72Timer_CH0_dont_capture_CCUVAL0_7_1_assert: assert property(Timer_CH0_dont_capture_CCUVAL0_7_intermediate_stateintermediate_2_Timer_CH0_dont_capture_CCUVAL0_72Timer_CH0_dont_capture_CCUVAL0_7_1);
    idle_2_Timer_CH0_compare_CCM1_CCU02Timer_CH0_compare_CCM1_CCU0_assert: assert property(idle_2_Timer_CH0_compare_CCM1_CCU02Timer_CH0_compare_CCM1_CCU0);
    idle_2_Timer_CH0_compare_CCM2_CCU02Timer_CH0_compare_CCM2_CCU0_assert: assert property(idle_2_Timer_CH0_compare_CCM2_CCU02Timer_CH0_compare_CCM2_CCU0);
    idle_2_Timer_CH0_compare_CCM3_CCU02Timer_CH0_compare_CCM3_CCU0_assert: assert property(idle_2_Timer_CH0_compare_CCM3_CCU02Timer_CH0_compare_CCM3_CCU0);
    idle_2_Timer_CH0_compare_CCM4_CCU02Timer_CH0_compare_CCM4_CCU0_assert: assert property(idle_2_Timer_CH0_compare_CCM4_CCU02Timer_CH0_compare_CCM4_CCU0);
    idle_2_Timer_CH0_compare_CCM5_CCU02Timer_CH0_compare_CCM5_CCU0_assert: assert property(idle_2_Timer_CH0_compare_CCM5_CCU02Timer_CH0_compare_CCM5_CCU0);
    idle_2_Timer_CH0_compare_CCM6_CCU02Timer_CH0_compare_CCM6_CCU0_assert: assert property(idle_2_Timer_CH0_compare_CCM6_CCU02Timer_CH0_compare_CCM6_CCU0);
    idle_2_Timer_CH0_disabled_compare_CCM7_CCU02Timer_CH0_disabled_compare_CCM7_CCU0_assert: assert property(idle_2_Timer_CH0_disabled_compare_CCM7_CCU02Timer_CH0_disabled_compare_CCM7_CCU0);
    Timer_CH1_capture_CCUVAL0_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL02Timer_CH1_capture_CCUVAL0_assert: assert property(Timer_CH1_capture_CCUVAL0_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL02Timer_CH1_capture_CCUVAL0);
    Timer_CH1_capture_CCUVAL0_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL02Timer_CH1_capture_CCUVAL0_1_assert: assert property(Timer_CH1_capture_CCUVAL0_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL02Timer_CH1_capture_CCUVAL0_1);
    Timer_CH1_dont_capture_CCUVAL0_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL02Timer_CH1_dont_capture_CCUVAL0_assert: assert property(Timer_CH1_dont_capture_CCUVAL0_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL02Timer_CH1_dont_capture_CCUVAL0);
    Timer_CH1_dont_capture_CCUVAL0_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL02Timer_CH1_dont_capture_CCUVAL0_1_assert: assert property(Timer_CH1_dont_capture_CCUVAL0_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL02Timer_CH1_dont_capture_CCUVAL0_1);
    Timer_CH1_capture_CCUVAL0_1_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL0_12Timer_CH1_capture_CCUVAL0_1_assert: assert property(Timer_CH1_capture_CCUVAL0_1_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL0_12Timer_CH1_capture_CCUVAL0_1);
    Timer_CH1_capture_CCUVAL0_1_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL0_12Timer_CH1_capture_CCUVAL0_1_1_assert: assert property(Timer_CH1_capture_CCUVAL0_1_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL0_12Timer_CH1_capture_CCUVAL0_1_1);
    Timer_CH1_dont_capture_CCUVAL0_1_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL0_12Timer_CH1_dont_capture_CCUVAL0_1_assert: assert property(Timer_CH1_dont_capture_CCUVAL0_1_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL0_12Timer_CH1_dont_capture_CCUVAL0_1);
    Timer_CH1_dont_capture_CCUVAL0_1_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL0_12Timer_CH1_dont_capture_CCUVAL0_1_1_assert: assert property(Timer_CH1_dont_capture_CCUVAL0_1_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL0_12Timer_CH1_dont_capture_CCUVAL0_1_1);
    Timer_CH1_dont_capture_CCUVAL0_2_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL0_22Timer_CH1_dont_capture_CCUVAL0_2_assert: assert property(Timer_CH1_dont_capture_CCUVAL0_2_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL0_22Timer_CH1_dont_capture_CCUVAL0_2);
    Timer_CH1_dont_capture_CCUVAL0_2_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL0_22Timer_CH1_dont_capture_CCUVAL0_2_1_assert: assert property(Timer_CH1_dont_capture_CCUVAL0_2_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL0_22Timer_CH1_dont_capture_CCUVAL0_2_1);
    Timer_CH1_dont_capture_CCUVAL0_3_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL0_32Timer_CH1_dont_capture_CCUVAL0_3_assert: assert property(Timer_CH1_dont_capture_CCUVAL0_3_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL0_32Timer_CH1_dont_capture_CCUVAL0_3);
    Timer_CH1_dont_capture_CCUVAL0_3_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL0_32Timer_CH1_dont_capture_CCUVAL0_3_1_assert: assert property(Timer_CH1_dont_capture_CCUVAL0_3_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL0_32Timer_CH1_dont_capture_CCUVAL0_3_1);
    Timer_CH1_dont_capture_CCUVAL0_4_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL0_42Timer_CH1_dont_capture_CCUVAL0_4_assert: assert property(Timer_CH1_dont_capture_CCUVAL0_4_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL0_42Timer_CH1_dont_capture_CCUVAL0_4);
    Timer_CH1_dont_capture_CCUVAL0_4_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL0_42Timer_CH1_dont_capture_CCUVAL0_4_1_assert: assert property(Timer_CH1_dont_capture_CCUVAL0_4_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL0_42Timer_CH1_dont_capture_CCUVAL0_4_1);
    Timer_CH1_capture_CCUVAL0_2_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL0_22Timer_CH1_capture_CCUVAL0_2_assert: assert property(Timer_CH1_capture_CCUVAL0_2_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL0_22Timer_CH1_capture_CCUVAL0_2);
    Timer_CH1_capture_CCUVAL0_2_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL0_22Timer_CH1_capture_CCUVAL0_2_1_assert: assert property(Timer_CH1_capture_CCUVAL0_2_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL0_22Timer_CH1_capture_CCUVAL0_2_1);
    Timer_CH1_dont_capture_CCUVAL0_5_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL0_52Timer_CH1_dont_capture_CCUVAL0_5_assert: assert property(Timer_CH1_dont_capture_CCUVAL0_5_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL0_52Timer_CH1_dont_capture_CCUVAL0_5);
    Timer_CH1_dont_capture_CCUVAL0_5_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL0_52Timer_CH1_dont_capture_CCUVAL0_5_1_assert: assert property(Timer_CH1_dont_capture_CCUVAL0_5_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL0_52Timer_CH1_dont_capture_CCUVAL0_5_1);
    Timer_CH1_capture_CCUVAL0_3_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL0_32Timer_CH1_capture_CCUVAL0_3_assert: assert property(Timer_CH1_capture_CCUVAL0_3_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL0_32Timer_CH1_capture_CCUVAL0_3);
    Timer_CH1_capture_CCUVAL0_3_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL0_32Timer_CH1_capture_CCUVAL0_3_1_assert: assert property(Timer_CH1_capture_CCUVAL0_3_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL0_32Timer_CH1_capture_CCUVAL0_3_1);
    Timer_CH1_dont_capture_CCUVAL0_6_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL0_62Timer_CH1_dont_capture_CCUVAL0_6_assert: assert property(Timer_CH1_dont_capture_CCUVAL0_6_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL0_62Timer_CH1_dont_capture_CCUVAL0_6);
    Timer_CH1_dont_capture_CCUVAL0_6_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL0_62Timer_CH1_dont_capture_CCUVAL0_6_1_assert: assert property(Timer_CH1_dont_capture_CCUVAL0_6_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL0_62Timer_CH1_dont_capture_CCUVAL0_6_1);
    Timer_CH1_capture_CCUVAL0_4_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL0_42Timer_CH1_capture_CCUVAL0_4_assert: assert property(Timer_CH1_capture_CCUVAL0_4_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL0_42Timer_CH1_capture_CCUVAL0_4);
    Timer_CH1_capture_CCUVAL0_4_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL0_42Timer_CH1_capture_CCUVAL0_4_1_assert: assert property(Timer_CH1_capture_CCUVAL0_4_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL0_42Timer_CH1_capture_CCUVAL0_4_1);
    Timer_CH1_dont_capture_CCUVAL0_7_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL0_72Timer_CH1_dont_capture_CCUVAL0_7_assert: assert property(Timer_CH1_dont_capture_CCUVAL0_7_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL0_72Timer_CH1_dont_capture_CCUVAL0_7);
    Timer_CH1_dont_capture_CCUVAL0_7_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL0_72Timer_CH1_dont_capture_CCUVAL0_7_1_assert: assert property(Timer_CH1_dont_capture_CCUVAL0_7_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL0_72Timer_CH1_dont_capture_CCUVAL0_7_1);
    idle_2_Timer_CH1_compare_CCM1_CCU02Timer_CH1_compare_CCM1_CCU0_assert: assert property(idle_2_Timer_CH1_compare_CCM1_CCU02Timer_CH1_compare_CCM1_CCU0);
    idle_2_Timer_CH1_compare_CCM2_CCU02Timer_CH1_compare_CCM2_CCU0_assert: assert property(idle_2_Timer_CH1_compare_CCM2_CCU02Timer_CH1_compare_CCM2_CCU0);
    idle_2_Timer_CH1_compare_CCM3_CCU02Timer_CH1_compare_CCM3_CCU0_assert: assert property(idle_2_Timer_CH1_compare_CCM3_CCU02Timer_CH1_compare_CCM3_CCU0);
    idle_2_Timer_CH1_compare_CCM4_CCU02Timer_CH1_compare_CCM4_CCU0_assert: assert property(idle_2_Timer_CH1_compare_CCM4_CCU02Timer_CH1_compare_CCM4_CCU0);
    idle_2_Timer_CH1_compare_CCM5_CCU02Timer_CH1_compare_CCM5_CCU0_assert: assert property(idle_2_Timer_CH1_compare_CCM5_CCU02Timer_CH1_compare_CCM5_CCU0);
    idle_2_Timer_CH1_compare_CCM6_CCU02Timer_CH1_compare_CCM6_CCU0_assert: assert property(idle_2_Timer_CH1_compare_CCM6_CCU02Timer_CH1_compare_CCM6_CCU0);
    idle_2_Timer_CH1_disabled_compare_CCM7_CCU02Timer_CH1_disabled_compare_CCM7_CCU0_assert: assert property(idle_2_Timer_CH1_disabled_compare_CCM7_CCU02Timer_CH1_disabled_compare_CCM7_CCU0);
    Timer_CH1_capture_CCUVAL1_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL12Timer_CH1_capture_CCUVAL1_assert: assert property(Timer_CH1_capture_CCUVAL1_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL12Timer_CH1_capture_CCUVAL1);
    Timer_CH1_capture_CCUVAL1_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL12Timer_CH1_capture_CCUVAL1_1_assert: assert property(Timer_CH1_capture_CCUVAL1_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL12Timer_CH1_capture_CCUVAL1_1);
    Timer_CH1_dont_capture_CCUVAL1_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL12Timer_CH1_dont_capture_CCUVAL1_assert: assert property(Timer_CH1_dont_capture_CCUVAL1_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL12Timer_CH1_dont_capture_CCUVAL1);
    Timer_CH1_dont_capture_CCUVAL1_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL12Timer_CH1_dont_capture_CCUVAL1_1_assert: assert property(Timer_CH1_dont_capture_CCUVAL1_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL12Timer_CH1_dont_capture_CCUVAL1_1);
    Timer_CH1_capture_CCUVAL1_1_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL1_12Timer_CH1_capture_CCUVAL1_1_assert: assert property(Timer_CH1_capture_CCUVAL1_1_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL1_12Timer_CH1_capture_CCUVAL1_1);
    Timer_CH1_capture_CCUVAL1_1_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL1_12Timer_CH1_capture_CCUVAL1_1_1_assert: assert property(Timer_CH1_capture_CCUVAL1_1_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL1_12Timer_CH1_capture_CCUVAL1_1_1);
    Timer_CH1_dont_capture_CCUVAL1_1_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL1_12Timer_CH1_dont_capture_CCUVAL1_1_assert: assert property(Timer_CH1_dont_capture_CCUVAL1_1_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL1_12Timer_CH1_dont_capture_CCUVAL1_1);
    Timer_CH1_dont_capture_CCUVAL1_1_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL1_12Timer_CH1_dont_capture_CCUVAL1_1_1_assert: assert property(Timer_CH1_dont_capture_CCUVAL1_1_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL1_12Timer_CH1_dont_capture_CCUVAL1_1_1);
    Timer_CH1_dont_capture_CCUVAL1_2_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL1_22Timer_CH1_dont_capture_CCUVAL1_2_assert: assert property(Timer_CH1_dont_capture_CCUVAL1_2_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL1_22Timer_CH1_dont_capture_CCUVAL1_2);
    Timer_CH1_dont_capture_CCUVAL1_2_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL1_22Timer_CH1_dont_capture_CCUVAL1_2_1_assert: assert property(Timer_CH1_dont_capture_CCUVAL1_2_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL1_22Timer_CH1_dont_capture_CCUVAL1_2_1);
    Timer_CH1_dont_capture_CCUVAL1_3_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL1_32Timer_CH1_dont_capture_CCUVAL1_3_assert: assert property(Timer_CH1_dont_capture_CCUVAL1_3_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL1_32Timer_CH1_dont_capture_CCUVAL1_3);
    Timer_CH1_dont_capture_CCUVAL1_3_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL1_32Timer_CH1_dont_capture_CCUVAL1_3_1_assert: assert property(Timer_CH1_dont_capture_CCUVAL1_3_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL1_32Timer_CH1_dont_capture_CCUVAL1_3_1);
    Timer_CH1_dont_capture_CCUVAL1_4_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL1_42Timer_CH1_dont_capture_CCUVAL1_4_assert: assert property(Timer_CH1_dont_capture_CCUVAL1_4_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL1_42Timer_CH1_dont_capture_CCUVAL1_4);
    Timer_CH1_dont_capture_CCUVAL1_4_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL1_42Timer_CH1_dont_capture_CCUVAL1_4_1_assert: assert property(Timer_CH1_dont_capture_CCUVAL1_4_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL1_42Timer_CH1_dont_capture_CCUVAL1_4_1);
    Timer_CH1_capture_CCUVAL1_2_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL1_22Timer_CH1_capture_CCUVAL1_2_assert: assert property(Timer_CH1_capture_CCUVAL1_2_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL1_22Timer_CH1_capture_CCUVAL1_2);
    Timer_CH1_capture_CCUVAL1_2_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL1_22Timer_CH1_capture_CCUVAL1_2_1_assert: assert property(Timer_CH1_capture_CCUVAL1_2_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL1_22Timer_CH1_capture_CCUVAL1_2_1);
    Timer_CH1_dont_capture_CCUVAL1_5_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL1_52Timer_CH1_dont_capture_CCUVAL1_5_assert: assert property(Timer_CH1_dont_capture_CCUVAL1_5_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL1_52Timer_CH1_dont_capture_CCUVAL1_5);
    Timer_CH1_dont_capture_CCUVAL1_5_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL1_52Timer_CH1_dont_capture_CCUVAL1_5_1_assert: assert property(Timer_CH1_dont_capture_CCUVAL1_5_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL1_52Timer_CH1_dont_capture_CCUVAL1_5_1);
    Timer_CH1_capture_CCUVAL1_3_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL1_32Timer_CH1_capture_CCUVAL1_3_assert: assert property(Timer_CH1_capture_CCUVAL1_3_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL1_32Timer_CH1_capture_CCUVAL1_3);
    Timer_CH1_capture_CCUVAL1_3_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL1_32Timer_CH1_capture_CCUVAL1_3_1_assert: assert property(Timer_CH1_capture_CCUVAL1_3_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL1_32Timer_CH1_capture_CCUVAL1_3_1);
    Timer_CH1_dont_capture_CCUVAL1_6_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL1_62Timer_CH1_dont_capture_CCUVAL1_6_assert: assert property(Timer_CH1_dont_capture_CCUVAL1_6_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL1_62Timer_CH1_dont_capture_CCUVAL1_6);
    Timer_CH1_dont_capture_CCUVAL1_6_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL1_62Timer_CH1_dont_capture_CCUVAL1_6_1_assert: assert property(Timer_CH1_dont_capture_CCUVAL1_6_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL1_62Timer_CH1_dont_capture_CCUVAL1_6_1);
    Timer_CH1_capture_CCUVAL1_4_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL1_42Timer_CH1_capture_CCUVAL1_4_assert: assert property(Timer_CH1_capture_CCUVAL1_4_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL1_42Timer_CH1_capture_CCUVAL1_4);
    Timer_CH1_capture_CCUVAL1_4_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL1_42Timer_CH1_capture_CCUVAL1_4_1_assert: assert property(Timer_CH1_capture_CCUVAL1_4_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL1_42Timer_CH1_capture_CCUVAL1_4_1);
    Timer_CH1_dont_capture_CCUVAL1_7_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL1_72Timer_CH1_dont_capture_CCUVAL1_7_assert: assert property(Timer_CH1_dont_capture_CCUVAL1_7_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL1_72Timer_CH1_dont_capture_CCUVAL1_7);
    Timer_CH1_dont_capture_CCUVAL1_7_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL1_72Timer_CH1_dont_capture_CCUVAL1_7_1_assert: assert property(Timer_CH1_dont_capture_CCUVAL1_7_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL1_72Timer_CH1_dont_capture_CCUVAL1_7_1);
    idle_2_Timer_CH1_compare_CCM1_CCU12Timer_CH1_compare_CCM1_CCU1_assert: assert property(idle_2_Timer_CH1_compare_CCM1_CCU12Timer_CH1_compare_CCM1_CCU1);
    idle_2_Timer_CH1_compare_CCM2_CCU12Timer_CH1_compare_CCM2_CCU1_assert: assert property(idle_2_Timer_CH1_compare_CCM2_CCU12Timer_CH1_compare_CCM2_CCU1);
    idle_2_Timer_CH1_compare_CCM3_CCU12Timer_CH1_compare_CCM3_CCU1_assert: assert property(idle_2_Timer_CH1_compare_CCM3_CCU12Timer_CH1_compare_CCM3_CCU1);
    idle_2_Timer_CH1_compare_CCM4_CCU12Timer_CH1_compare_CCM4_CCU1_assert: assert property(idle_2_Timer_CH1_compare_CCM4_CCU12Timer_CH1_compare_CCM4_CCU1);
    idle_2_Timer_CH1_compare_CCM5_CCU12Timer_CH1_compare_CCM5_CCU1_assert: assert property(idle_2_Timer_CH1_compare_CCM5_CCU12Timer_CH1_compare_CCM5_CCU1);
    idle_2_Timer_CH1_compare_CCM6_CCU12Timer_CH1_compare_CCM6_CCU1_assert: assert property(idle_2_Timer_CH1_compare_CCM6_CCU12Timer_CH1_compare_CCM6_CCU1);
    idle_2_Timer_CH1_disabled_compare_CCM7_CCU12Timer_CH1_disabled_compare_CCM7_CCU1_assert: assert property(idle_2_Timer_CH1_disabled_compare_CCM7_CCU12Timer_CH1_disabled_compare_CCM7_CCU1);
    Timer_CH1_capture_CCUVAL2_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL22Timer_CH1_capture_CCUVAL2_assert: assert property(Timer_CH1_capture_CCUVAL2_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL22Timer_CH1_capture_CCUVAL2);
    Timer_CH1_capture_CCUVAL2_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL22Timer_CH1_capture_CCUVAL2_1_assert: assert property(Timer_CH1_capture_CCUVAL2_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL22Timer_CH1_capture_CCUVAL2_1);
    Timer_CH1_dont_capture_CCUVAL2_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL22Timer_CH1_dont_capture_CCUVAL2_assert: assert property(Timer_CH1_dont_capture_CCUVAL2_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL22Timer_CH1_dont_capture_CCUVAL2);
    Timer_CH1_dont_capture_CCUVAL2_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL22Timer_CH1_dont_capture_CCUVAL2_1_assert: assert property(Timer_CH1_dont_capture_CCUVAL2_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL22Timer_CH1_dont_capture_CCUVAL2_1);
    Timer_CH1_capture_CCUVAL2_1_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL2_12Timer_CH1_capture_CCUVAL2_1_assert: assert property(Timer_CH1_capture_CCUVAL2_1_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL2_12Timer_CH1_capture_CCUVAL2_1);
    Timer_CH1_capture_CCUVAL2_1_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL2_12Timer_CH1_capture_CCUVAL2_1_1_assert: assert property(Timer_CH1_capture_CCUVAL2_1_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL2_12Timer_CH1_capture_CCUVAL2_1_1);
    Timer_CH1_dont_capture_CCUVAL2_1_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL2_12Timer_CH1_dont_capture_CCUVAL2_1_assert: assert property(Timer_CH1_dont_capture_CCUVAL2_1_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL2_12Timer_CH1_dont_capture_CCUVAL2_1);
    Timer_CH1_dont_capture_CCUVAL2_1_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL2_12Timer_CH1_dont_capture_CCUVAL2_1_1_assert: assert property(Timer_CH1_dont_capture_CCUVAL2_1_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL2_12Timer_CH1_dont_capture_CCUVAL2_1_1);
    Timer_CH1_dont_capture_CCUVAL2_2_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL2_22Timer_CH1_dont_capture_CCUVAL2_2_assert: assert property(Timer_CH1_dont_capture_CCUVAL2_2_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL2_22Timer_CH1_dont_capture_CCUVAL2_2);
    Timer_CH1_dont_capture_CCUVAL2_2_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL2_22Timer_CH1_dont_capture_CCUVAL2_2_1_assert: assert property(Timer_CH1_dont_capture_CCUVAL2_2_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL2_22Timer_CH1_dont_capture_CCUVAL2_2_1);
    Timer_CH1_dont_capture_CCUVAL2_3_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL2_32Timer_CH1_dont_capture_CCUVAL2_3_assert: assert property(Timer_CH1_dont_capture_CCUVAL2_3_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL2_32Timer_CH1_dont_capture_CCUVAL2_3);
    Timer_CH1_dont_capture_CCUVAL2_3_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL2_32Timer_CH1_dont_capture_CCUVAL2_3_1_assert: assert property(Timer_CH1_dont_capture_CCUVAL2_3_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL2_32Timer_CH1_dont_capture_CCUVAL2_3_1);
    Timer_CH1_dont_capture_CCUVAL2_4_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL2_42Timer_CH1_dont_capture_CCUVAL2_4_assert: assert property(Timer_CH1_dont_capture_CCUVAL2_4_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL2_42Timer_CH1_dont_capture_CCUVAL2_4);
    Timer_CH1_dont_capture_CCUVAL2_4_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL2_42Timer_CH1_dont_capture_CCUVAL2_4_1_assert: assert property(Timer_CH1_dont_capture_CCUVAL2_4_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL2_42Timer_CH1_dont_capture_CCUVAL2_4_1);
    Timer_CH1_capture_CCUVAL2_2_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL2_22Timer_CH1_capture_CCUVAL2_2_assert: assert property(Timer_CH1_capture_CCUVAL2_2_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL2_22Timer_CH1_capture_CCUVAL2_2);
    Timer_CH1_capture_CCUVAL2_2_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL2_22Timer_CH1_capture_CCUVAL2_2_1_assert: assert property(Timer_CH1_capture_CCUVAL2_2_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL2_22Timer_CH1_capture_CCUVAL2_2_1);
    Timer_CH1_dont_capture_CCUVAL2_5_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL2_52Timer_CH1_dont_capture_CCUVAL2_5_assert: assert property(Timer_CH1_dont_capture_CCUVAL2_5_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL2_52Timer_CH1_dont_capture_CCUVAL2_5);
    Timer_CH1_dont_capture_CCUVAL2_5_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL2_52Timer_CH1_dont_capture_CCUVAL2_5_1_assert: assert property(Timer_CH1_dont_capture_CCUVAL2_5_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL2_52Timer_CH1_dont_capture_CCUVAL2_5_1);
    Timer_CH1_capture_CCUVAL2_3_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL2_32Timer_CH1_capture_CCUVAL2_3_assert: assert property(Timer_CH1_capture_CCUVAL2_3_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL2_32Timer_CH1_capture_CCUVAL2_3);
    Timer_CH1_capture_CCUVAL2_3_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL2_32Timer_CH1_capture_CCUVAL2_3_1_assert: assert property(Timer_CH1_capture_CCUVAL2_3_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL2_32Timer_CH1_capture_CCUVAL2_3_1);
    Timer_CH1_dont_capture_CCUVAL2_6_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL2_62Timer_CH1_dont_capture_CCUVAL2_6_assert: assert property(Timer_CH1_dont_capture_CCUVAL2_6_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL2_62Timer_CH1_dont_capture_CCUVAL2_6);
    Timer_CH1_dont_capture_CCUVAL2_6_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL2_62Timer_CH1_dont_capture_CCUVAL2_6_1_assert: assert property(Timer_CH1_dont_capture_CCUVAL2_6_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL2_62Timer_CH1_dont_capture_CCUVAL2_6_1);
    Timer_CH1_capture_CCUVAL2_4_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL2_42Timer_CH1_capture_CCUVAL2_4_assert: assert property(Timer_CH1_capture_CCUVAL2_4_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL2_42Timer_CH1_capture_CCUVAL2_4);
    Timer_CH1_capture_CCUVAL2_4_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL2_42Timer_CH1_capture_CCUVAL2_4_1_assert: assert property(Timer_CH1_capture_CCUVAL2_4_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL2_42Timer_CH1_capture_CCUVAL2_4_1);
    Timer_CH1_dont_capture_CCUVAL2_7_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL2_72Timer_CH1_dont_capture_CCUVAL2_7_assert: assert property(Timer_CH1_dont_capture_CCUVAL2_7_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL2_72Timer_CH1_dont_capture_CCUVAL2_7);
    Timer_CH1_dont_capture_CCUVAL2_7_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL2_72Timer_CH1_dont_capture_CCUVAL2_7_1_assert: assert property(Timer_CH1_dont_capture_CCUVAL2_7_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL2_72Timer_CH1_dont_capture_CCUVAL2_7_1);
    idle_2_Timer_CH1_compare_CCM1_CCU22Timer_CH1_compare_CCM1_CCU2_assert: assert property(idle_2_Timer_CH1_compare_CCM1_CCU22Timer_CH1_compare_CCM1_CCU2);
    idle_2_Timer_CH1_compare_CCM2_CCU22Timer_CH1_compare_CCM2_CCU2_assert: assert property(idle_2_Timer_CH1_compare_CCM2_CCU22Timer_CH1_compare_CCM2_CCU2);
    idle_2_Timer_CH1_compare_CCM3_CCU22Timer_CH1_compare_CCM3_CCU2_assert: assert property(idle_2_Timer_CH1_compare_CCM3_CCU22Timer_CH1_compare_CCM3_CCU2);
    idle_2_Timer_CH1_compare_CCM4_CCU22Timer_CH1_compare_CCM4_CCU2_assert: assert property(idle_2_Timer_CH1_compare_CCM4_CCU22Timer_CH1_compare_CCM4_CCU2);
    idle_2_Timer_CH1_compare_CCM5_CCU22Timer_CH1_compare_CCM5_CCU2_assert: assert property(idle_2_Timer_CH1_compare_CCM5_CCU22Timer_CH1_compare_CCM5_CCU2);
    idle_2_Timer_CH1_compare_CCM6_CCU22Timer_CH1_compare_CCM6_CCU2_assert: assert property(idle_2_Timer_CH1_compare_CCM6_CCU22Timer_CH1_compare_CCM6_CCU2);
    idle_2_Timer_CH1_disabled_compare_CCM7_CCU22Timer_CH1_disabled_compare_CCM7_CCU2_assert: assert property(idle_2_Timer_CH1_disabled_compare_CCM7_CCU22Timer_CH1_disabled_compare_CCM7_CCU2);
    Timer_CH1_capture_CCUVAL3_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL32Timer_CH1_capture_CCUVAL3_assert: assert property(Timer_CH1_capture_CCUVAL3_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL32Timer_CH1_capture_CCUVAL3);
    Timer_CH1_capture_CCUVAL3_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL32Timer_CH1_capture_CCUVAL3_1_assert: assert property(Timer_CH1_capture_CCUVAL3_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL32Timer_CH1_capture_CCUVAL3_1);
    Timer_CH1_dont_capture_CCUVAL3_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL32Timer_CH1_dont_capture_CCUVAL3_assert: assert property(Timer_CH1_dont_capture_CCUVAL3_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL32Timer_CH1_dont_capture_CCUVAL3);
    Timer_CH1_dont_capture_CCUVAL3_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL32Timer_CH1_dont_capture_CCUVAL3_1_assert: assert property(Timer_CH1_dont_capture_CCUVAL3_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL32Timer_CH1_dont_capture_CCUVAL3_1);
    Timer_CH1_capture_CCUVAL3_1_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL3_12Timer_CH1_capture_CCUVAL3_1_assert: assert property(Timer_CH1_capture_CCUVAL3_1_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL3_12Timer_CH1_capture_CCUVAL3_1);
    Timer_CH1_capture_CCUVAL3_1_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL3_12Timer_CH1_capture_CCUVAL3_1_1_assert: assert property(Timer_CH1_capture_CCUVAL3_1_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL3_12Timer_CH1_capture_CCUVAL3_1_1);
    Timer_CH1_dont_capture_CCUVAL3_1_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL3_12Timer_CH1_dont_capture_CCUVAL3_1_assert: assert property(Timer_CH1_dont_capture_CCUVAL3_1_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL3_12Timer_CH1_dont_capture_CCUVAL3_1);
    Timer_CH1_dont_capture_CCUVAL3_1_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL3_12Timer_CH1_dont_capture_CCUVAL3_1_1_assert: assert property(Timer_CH1_dont_capture_CCUVAL3_1_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL3_12Timer_CH1_dont_capture_CCUVAL3_1_1);
    Timer_CH1_dont_capture_CCUVAL3_2_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL3_22Timer_CH1_dont_capture_CCUVAL3_2_assert: assert property(Timer_CH1_dont_capture_CCUVAL3_2_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL3_22Timer_CH1_dont_capture_CCUVAL3_2);
    Timer_CH1_dont_capture_CCUVAL3_2_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL3_22Timer_CH1_dont_capture_CCUVAL3_2_1_assert: assert property(Timer_CH1_dont_capture_CCUVAL3_2_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL3_22Timer_CH1_dont_capture_CCUVAL3_2_1);
    Timer_CH1_dont_capture_CCUVAL3_3_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL3_32Timer_CH1_dont_capture_CCUVAL3_3_assert: assert property(Timer_CH1_dont_capture_CCUVAL3_3_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL3_32Timer_CH1_dont_capture_CCUVAL3_3);
    Timer_CH1_dont_capture_CCUVAL3_3_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL3_32Timer_CH1_dont_capture_CCUVAL3_3_1_assert: assert property(Timer_CH1_dont_capture_CCUVAL3_3_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL3_32Timer_CH1_dont_capture_CCUVAL3_3_1);
    Timer_CH1_dont_capture_CCUVAL3_4_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL3_42Timer_CH1_dont_capture_CCUVAL3_4_assert: assert property(Timer_CH1_dont_capture_CCUVAL3_4_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL3_42Timer_CH1_dont_capture_CCUVAL3_4);
    Timer_CH1_dont_capture_CCUVAL3_4_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL3_42Timer_CH1_dont_capture_CCUVAL3_4_1_assert: assert property(Timer_CH1_dont_capture_CCUVAL3_4_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL3_42Timer_CH1_dont_capture_CCUVAL3_4_1);
    Timer_CH1_capture_CCUVAL3_2_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL3_22Timer_CH1_capture_CCUVAL3_2_assert: assert property(Timer_CH1_capture_CCUVAL3_2_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL3_22Timer_CH1_capture_CCUVAL3_2);
    Timer_CH1_capture_CCUVAL3_2_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL3_22Timer_CH1_capture_CCUVAL3_2_1_assert: assert property(Timer_CH1_capture_CCUVAL3_2_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL3_22Timer_CH1_capture_CCUVAL3_2_1);
    Timer_CH1_dont_capture_CCUVAL3_5_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL3_52Timer_CH1_dont_capture_CCUVAL3_5_assert: assert property(Timer_CH1_dont_capture_CCUVAL3_5_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL3_52Timer_CH1_dont_capture_CCUVAL3_5);
    Timer_CH1_dont_capture_CCUVAL3_5_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL3_52Timer_CH1_dont_capture_CCUVAL3_5_1_assert: assert property(Timer_CH1_dont_capture_CCUVAL3_5_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL3_52Timer_CH1_dont_capture_CCUVAL3_5_1);
    Timer_CH1_capture_CCUVAL3_3_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL3_32Timer_CH1_capture_CCUVAL3_3_assert: assert property(Timer_CH1_capture_CCUVAL3_3_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL3_32Timer_CH1_capture_CCUVAL3_3);
    Timer_CH1_capture_CCUVAL3_3_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL3_32Timer_CH1_capture_CCUVAL3_3_1_assert: assert property(Timer_CH1_capture_CCUVAL3_3_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL3_32Timer_CH1_capture_CCUVAL3_3_1);
    Timer_CH1_dont_capture_CCUVAL3_6_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL3_62Timer_CH1_dont_capture_CCUVAL3_6_assert: assert property(Timer_CH1_dont_capture_CCUVAL3_6_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL3_62Timer_CH1_dont_capture_CCUVAL3_6);
    Timer_CH1_dont_capture_CCUVAL3_6_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL3_62Timer_CH1_dont_capture_CCUVAL3_6_1_assert: assert property(Timer_CH1_dont_capture_CCUVAL3_6_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL3_62Timer_CH1_dont_capture_CCUVAL3_6_1);
    Timer_CH1_capture_CCUVAL3_4_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL3_42Timer_CH1_capture_CCUVAL3_4_assert: assert property(Timer_CH1_capture_CCUVAL3_4_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL3_42Timer_CH1_capture_CCUVAL3_4);
    Timer_CH1_capture_CCUVAL3_4_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL3_42Timer_CH1_capture_CCUVAL3_4_1_assert: assert property(Timer_CH1_capture_CCUVAL3_4_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL3_42Timer_CH1_capture_CCUVAL3_4_1);
    Timer_CH1_dont_capture_CCUVAL3_7_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL3_72Timer_CH1_dont_capture_CCUVAL3_7_assert: assert property(Timer_CH1_dont_capture_CCUVAL3_7_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL3_72Timer_CH1_dont_capture_CCUVAL3_7);
    Timer_CH1_dont_capture_CCUVAL3_7_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL3_72Timer_CH1_dont_capture_CCUVAL3_7_1_assert: assert property(Timer_CH1_dont_capture_CCUVAL3_7_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL3_72Timer_CH1_dont_capture_CCUVAL3_7_1);
    idle_2_Timer_CH1_compare_CCM1_CCU32Timer_CH1_compare_CCM1_CCU3_assert: assert property(idle_2_Timer_CH1_compare_CCM1_CCU32Timer_CH1_compare_CCM1_CCU3);
    idle_2_Timer_CH1_compare_CCM2_CCU32Timer_CH1_compare_CCM2_CCU3_assert: assert property(idle_2_Timer_CH1_compare_CCM2_CCU32Timer_CH1_compare_CCM2_CCU3);
    idle_2_Timer_CH1_compare_CCM3_CCU32Timer_CH1_compare_CCM3_CCU3_assert: assert property(idle_2_Timer_CH1_compare_CCM3_CCU32Timer_CH1_compare_CCM3_CCU3);
    idle_2_Timer_CH1_compare_CCM4_CCU32Timer_CH1_compare_CCM4_CCU3_assert: assert property(idle_2_Timer_CH1_compare_CCM4_CCU32Timer_CH1_compare_CCM4_CCU3);
    idle_2_Timer_CH1_compare_CCM5_CCU32Timer_CH1_compare_CCM5_CCU3_assert: assert property(idle_2_Timer_CH1_compare_CCM5_CCU32Timer_CH1_compare_CCM5_CCU3);
    idle_2_Timer_CH1_compare_CCM6_CCU32Timer_CH1_compare_CCM6_CCU3_assert: assert property(idle_2_Timer_CH1_compare_CCM6_CCU32Timer_CH1_compare_CCM6_CCU3);
    idle_2_Timer_CH1_disabled_compare_CCM7_CCU32Timer_CH1_disabled_compare_CCM7_CCU3_assert: assert property(idle_2_Timer_CH1_disabled_compare_CCM7_CCU32Timer_CH1_disabled_compare_CCM7_CCU3);
    Timer_CH1_capture_CCUVAL4_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL42Timer_CH1_capture_CCUVAL4_assert: assert property(Timer_CH1_capture_CCUVAL4_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL42Timer_CH1_capture_CCUVAL4);
    Timer_CH1_capture_CCUVAL4_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL42Timer_CH1_capture_CCUVAL4_1_assert: assert property(Timer_CH1_capture_CCUVAL4_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL42Timer_CH1_capture_CCUVAL4_1);
    Timer_CH1_dont_capture_CCUVAL4_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL42Timer_CH1_dont_capture_CCUVAL4_assert: assert property(Timer_CH1_dont_capture_CCUVAL4_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL42Timer_CH1_dont_capture_CCUVAL4);
    Timer_CH1_dont_capture_CCUVAL4_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL42Timer_CH1_dont_capture_CCUVAL4_1_assert: assert property(Timer_CH1_dont_capture_CCUVAL4_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL42Timer_CH1_dont_capture_CCUVAL4_1);
    Timer_CH1_capture_CCUVAL4_1_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL4_12Timer_CH1_capture_CCUVAL4_1_assert: assert property(Timer_CH1_capture_CCUVAL4_1_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL4_12Timer_CH1_capture_CCUVAL4_1);
    Timer_CH1_capture_CCUVAL4_1_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL4_12Timer_CH1_capture_CCUVAL4_1_1_assert: assert property(Timer_CH1_capture_CCUVAL4_1_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL4_12Timer_CH1_capture_CCUVAL4_1_1);
    Timer_CH1_dont_capture_CCUVAL4_1_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL4_12Timer_CH1_dont_capture_CCUVAL4_1_assert: assert property(Timer_CH1_dont_capture_CCUVAL4_1_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL4_12Timer_CH1_dont_capture_CCUVAL4_1);
    Timer_CH1_dont_capture_CCUVAL4_1_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL4_12Timer_CH1_dont_capture_CCUVAL4_1_1_assert: assert property(Timer_CH1_dont_capture_CCUVAL4_1_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL4_12Timer_CH1_dont_capture_CCUVAL4_1_1);
    Timer_CH1_dont_capture_CCUVAL4_2_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL4_22Timer_CH1_dont_capture_CCUVAL4_2_assert: assert property(Timer_CH1_dont_capture_CCUVAL4_2_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL4_22Timer_CH1_dont_capture_CCUVAL4_2);
    Timer_CH1_dont_capture_CCUVAL4_2_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL4_22Timer_CH1_dont_capture_CCUVAL4_2_1_assert: assert property(Timer_CH1_dont_capture_CCUVAL4_2_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL4_22Timer_CH1_dont_capture_CCUVAL4_2_1);
    Timer_CH1_dont_capture_CCUVAL4_3_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL4_32Timer_CH1_dont_capture_CCUVAL4_3_assert: assert property(Timer_CH1_dont_capture_CCUVAL4_3_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL4_32Timer_CH1_dont_capture_CCUVAL4_3);
    Timer_CH1_dont_capture_CCUVAL4_3_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL4_32Timer_CH1_dont_capture_CCUVAL4_3_1_assert: assert property(Timer_CH1_dont_capture_CCUVAL4_3_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL4_32Timer_CH1_dont_capture_CCUVAL4_3_1);
    Timer_CH1_dont_capture_CCUVAL4_4_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL4_42Timer_CH1_dont_capture_CCUVAL4_4_assert: assert property(Timer_CH1_dont_capture_CCUVAL4_4_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL4_42Timer_CH1_dont_capture_CCUVAL4_4);
    Timer_CH1_dont_capture_CCUVAL4_4_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL4_42Timer_CH1_dont_capture_CCUVAL4_4_1_assert: assert property(Timer_CH1_dont_capture_CCUVAL4_4_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL4_42Timer_CH1_dont_capture_CCUVAL4_4_1);
    Timer_CH1_capture_CCUVAL4_2_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL4_22Timer_CH1_capture_CCUVAL4_2_assert: assert property(Timer_CH1_capture_CCUVAL4_2_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL4_22Timer_CH1_capture_CCUVAL4_2);
    Timer_CH1_capture_CCUVAL4_2_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL4_22Timer_CH1_capture_CCUVAL4_2_1_assert: assert property(Timer_CH1_capture_CCUVAL4_2_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL4_22Timer_CH1_capture_CCUVAL4_2_1);
    Timer_CH1_dont_capture_CCUVAL4_5_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL4_52Timer_CH1_dont_capture_CCUVAL4_5_assert: assert property(Timer_CH1_dont_capture_CCUVAL4_5_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL4_52Timer_CH1_dont_capture_CCUVAL4_5);
    Timer_CH1_dont_capture_CCUVAL4_5_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL4_52Timer_CH1_dont_capture_CCUVAL4_5_1_assert: assert property(Timer_CH1_dont_capture_CCUVAL4_5_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL4_52Timer_CH1_dont_capture_CCUVAL4_5_1);
    Timer_CH1_capture_CCUVAL4_3_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL4_32Timer_CH1_capture_CCUVAL4_3_assert: assert property(Timer_CH1_capture_CCUVAL4_3_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL4_32Timer_CH1_capture_CCUVAL4_3);
    Timer_CH1_capture_CCUVAL4_3_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL4_32Timer_CH1_capture_CCUVAL4_3_1_assert: assert property(Timer_CH1_capture_CCUVAL4_3_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL4_32Timer_CH1_capture_CCUVAL4_3_1);
    Timer_CH1_dont_capture_CCUVAL4_6_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL4_62Timer_CH1_dont_capture_CCUVAL4_6_assert: assert property(Timer_CH1_dont_capture_CCUVAL4_6_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL4_62Timer_CH1_dont_capture_CCUVAL4_6);
    Timer_CH1_dont_capture_CCUVAL4_6_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL4_62Timer_CH1_dont_capture_CCUVAL4_6_1_assert: assert property(Timer_CH1_dont_capture_CCUVAL4_6_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL4_62Timer_CH1_dont_capture_CCUVAL4_6_1);
    Timer_CH1_capture_CCUVAL4_4_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL4_42Timer_CH1_capture_CCUVAL4_4_assert: assert property(Timer_CH1_capture_CCUVAL4_4_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL4_42Timer_CH1_capture_CCUVAL4_4);
    Timer_CH1_capture_CCUVAL4_4_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL4_42Timer_CH1_capture_CCUVAL4_4_1_assert: assert property(Timer_CH1_capture_CCUVAL4_4_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL4_42Timer_CH1_capture_CCUVAL4_4_1);
    Timer_CH1_dont_capture_CCUVAL4_7_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL4_72Timer_CH1_dont_capture_CCUVAL4_7_assert: assert property(Timer_CH1_dont_capture_CCUVAL4_7_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL4_72Timer_CH1_dont_capture_CCUVAL4_7);
    Timer_CH1_dont_capture_CCUVAL4_7_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL4_72Timer_CH1_dont_capture_CCUVAL4_7_1_assert: assert property(Timer_CH1_dont_capture_CCUVAL4_7_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL4_72Timer_CH1_dont_capture_CCUVAL4_7_1);
    idle_2_Timer_CH1_compare_CCM1_CCU42Timer_CH1_compare_CCM1_CCU4_assert: assert property(idle_2_Timer_CH1_compare_CCM1_CCU42Timer_CH1_compare_CCM1_CCU4);
    idle_2_Timer_CH1_compare_CCM2_CCU42Timer_CH1_compare_CCM2_CCU4_assert: assert property(idle_2_Timer_CH1_compare_CCM2_CCU42Timer_CH1_compare_CCM2_CCU4);
    idle_2_Timer_CH1_compare_CCM3_CCU42Timer_CH1_compare_CCM3_CCU4_assert: assert property(idle_2_Timer_CH1_compare_CCM3_CCU42Timer_CH1_compare_CCM3_CCU4);
    idle_2_Timer_CH1_compare_CCM4_CCU42Timer_CH1_compare_CCM4_CCU4_assert: assert property(idle_2_Timer_CH1_compare_CCM4_CCU42Timer_CH1_compare_CCM4_CCU4);
    idle_2_Timer_CH1_compare_CCM5_CCU42Timer_CH1_compare_CCM5_CCU4_assert: assert property(idle_2_Timer_CH1_compare_CCM5_CCU42Timer_CH1_compare_CCM5_CCU4);
    idle_2_Timer_CH1_compare_CCM6_CCU42Timer_CH1_compare_CCM6_CCU4_assert: assert property(idle_2_Timer_CH1_compare_CCM6_CCU42Timer_CH1_compare_CCM6_CCU4);
    idle_2_Timer_CH1_disabled_compare_CCM7_CCU42Timer_CH1_disabled_compare_CCM7_CCU4_assert: assert property(idle_2_Timer_CH1_disabled_compare_CCM7_CCU42Timer_CH1_disabled_compare_CCM7_CCU4);
    Timer_CH1_capture_CCUVAL5_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL52Timer_CH1_capture_CCUVAL5_assert: assert property(Timer_CH1_capture_CCUVAL5_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL52Timer_CH1_capture_CCUVAL5);
    Timer_CH1_capture_CCUVAL5_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL52Timer_CH1_capture_CCUVAL5_1_assert: assert property(Timer_CH1_capture_CCUVAL5_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL52Timer_CH1_capture_CCUVAL5_1);
    Timer_CH1_dont_capture_CCUVAL5_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL52Timer_CH1_dont_capture_CCUVAL5_assert: assert property(Timer_CH1_dont_capture_CCUVAL5_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL52Timer_CH1_dont_capture_CCUVAL5);
    Timer_CH1_dont_capture_CCUVAL5_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL52Timer_CH1_dont_capture_CCUVAL5_1_assert: assert property(Timer_CH1_dont_capture_CCUVAL5_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL52Timer_CH1_dont_capture_CCUVAL5_1);
    Timer_CH1_capture_CCUVAL5_1_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL5_12Timer_CH1_capture_CCUVAL5_1_assert: assert property(Timer_CH1_capture_CCUVAL5_1_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL5_12Timer_CH1_capture_CCUVAL5_1);
    Timer_CH1_capture_CCUVAL5_1_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL5_12Timer_CH1_capture_CCUVAL5_1_1_assert: assert property(Timer_CH1_capture_CCUVAL5_1_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL5_12Timer_CH1_capture_CCUVAL5_1_1);
    Timer_CH1_dont_capture_CCUVAL5_1_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL5_12Timer_CH1_dont_capture_CCUVAL5_1_assert: assert property(Timer_CH1_dont_capture_CCUVAL5_1_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL5_12Timer_CH1_dont_capture_CCUVAL5_1);
    Timer_CH1_dont_capture_CCUVAL5_1_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL5_12Timer_CH1_dont_capture_CCUVAL5_1_1_assert: assert property(Timer_CH1_dont_capture_CCUVAL5_1_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL5_12Timer_CH1_dont_capture_CCUVAL5_1_1);
    Timer_CH1_dont_capture_CCUVAL5_2_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL5_22Timer_CH1_dont_capture_CCUVAL5_2_assert: assert property(Timer_CH1_dont_capture_CCUVAL5_2_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL5_22Timer_CH1_dont_capture_CCUVAL5_2);
    Timer_CH1_dont_capture_CCUVAL5_2_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL5_22Timer_CH1_dont_capture_CCUVAL5_2_1_assert: assert property(Timer_CH1_dont_capture_CCUVAL5_2_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL5_22Timer_CH1_dont_capture_CCUVAL5_2_1);
    Timer_CH1_dont_capture_CCUVAL5_3_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL5_32Timer_CH1_dont_capture_CCUVAL5_3_assert: assert property(Timer_CH1_dont_capture_CCUVAL5_3_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL5_32Timer_CH1_dont_capture_CCUVAL5_3);
    Timer_CH1_dont_capture_CCUVAL5_3_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL5_32Timer_CH1_dont_capture_CCUVAL5_3_1_assert: assert property(Timer_CH1_dont_capture_CCUVAL5_3_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL5_32Timer_CH1_dont_capture_CCUVAL5_3_1);
    Timer_CH1_dont_capture_CCUVAL5_4_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL5_42Timer_CH1_dont_capture_CCUVAL5_4_assert: assert property(Timer_CH1_dont_capture_CCUVAL5_4_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL5_42Timer_CH1_dont_capture_CCUVAL5_4);
    Timer_CH1_dont_capture_CCUVAL5_4_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL5_42Timer_CH1_dont_capture_CCUVAL5_4_1_assert: assert property(Timer_CH1_dont_capture_CCUVAL5_4_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL5_42Timer_CH1_dont_capture_CCUVAL5_4_1);
    Timer_CH1_capture_CCUVAL5_2_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL5_22Timer_CH1_capture_CCUVAL5_2_assert: assert property(Timer_CH1_capture_CCUVAL5_2_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL5_22Timer_CH1_capture_CCUVAL5_2);
    Timer_CH1_capture_CCUVAL5_2_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL5_22Timer_CH1_capture_CCUVAL5_2_1_assert: assert property(Timer_CH1_capture_CCUVAL5_2_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL5_22Timer_CH1_capture_CCUVAL5_2_1);
    Timer_CH1_dont_capture_CCUVAL5_5_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL5_52Timer_CH1_dont_capture_CCUVAL5_5_assert: assert property(Timer_CH1_dont_capture_CCUVAL5_5_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL5_52Timer_CH1_dont_capture_CCUVAL5_5);
    Timer_CH1_dont_capture_CCUVAL5_5_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL5_52Timer_CH1_dont_capture_CCUVAL5_5_1_assert: assert property(Timer_CH1_dont_capture_CCUVAL5_5_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL5_52Timer_CH1_dont_capture_CCUVAL5_5_1);
    Timer_CH1_capture_CCUVAL5_3_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL5_32Timer_CH1_capture_CCUVAL5_3_assert: assert property(Timer_CH1_capture_CCUVAL5_3_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL5_32Timer_CH1_capture_CCUVAL5_3);
    Timer_CH1_capture_CCUVAL5_3_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL5_32Timer_CH1_capture_CCUVAL5_3_1_assert: assert property(Timer_CH1_capture_CCUVAL5_3_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL5_32Timer_CH1_capture_CCUVAL5_3_1);
    Timer_CH1_dont_capture_CCUVAL5_6_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL5_62Timer_CH1_dont_capture_CCUVAL5_6_assert: assert property(Timer_CH1_dont_capture_CCUVAL5_6_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL5_62Timer_CH1_dont_capture_CCUVAL5_6);
    Timer_CH1_dont_capture_CCUVAL5_6_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL5_62Timer_CH1_dont_capture_CCUVAL5_6_1_assert: assert property(Timer_CH1_dont_capture_CCUVAL5_6_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL5_62Timer_CH1_dont_capture_CCUVAL5_6_1);
    Timer_CH1_capture_CCUVAL5_4_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL5_42Timer_CH1_capture_CCUVAL5_4_assert: assert property(Timer_CH1_capture_CCUVAL5_4_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL5_42Timer_CH1_capture_CCUVAL5_4);
    Timer_CH1_capture_CCUVAL5_4_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL5_42Timer_CH1_capture_CCUVAL5_4_1_assert: assert property(Timer_CH1_capture_CCUVAL5_4_intermediate_stateintermediate_2_Timer_CH1_capture_CCUVAL5_42Timer_CH1_capture_CCUVAL5_4_1);
    Timer_CH1_dont_capture_CCUVAL5_7_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL5_72Timer_CH1_dont_capture_CCUVAL5_7_assert: assert property(Timer_CH1_dont_capture_CCUVAL5_7_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL5_72Timer_CH1_dont_capture_CCUVAL5_7);
    Timer_CH1_dont_capture_CCUVAL5_7_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL5_72Timer_CH1_dont_capture_CCUVAL5_7_1_assert: assert property(Timer_CH1_dont_capture_CCUVAL5_7_intermediate_stateintermediate_2_Timer_CH1_dont_capture_CCUVAL5_72Timer_CH1_dont_capture_CCUVAL5_7_1);
    idle_2_Timer_CH1_compare_CCM1_CCU52Timer_CH1_compare_CCM1_CCU5_assert: assert property(idle_2_Timer_CH1_compare_CCM1_CCU52Timer_CH1_compare_CCM1_CCU5);
    idle_2_Timer_CH1_compare_CCM2_CCU52Timer_CH1_compare_CCM2_CCU5_assert: assert property(idle_2_Timer_CH1_compare_CCM2_CCU52Timer_CH1_compare_CCM2_CCU5);
    idle_2_Timer_CH1_compare_CCM3_CCU52Timer_CH1_compare_CCM3_CCU5_assert: assert property(idle_2_Timer_CH1_compare_CCM3_CCU52Timer_CH1_compare_CCM3_CCU5);
    idle_2_Timer_CH1_compare_CCM4_CCU52Timer_CH1_compare_CCM4_CCU5_assert: assert property(idle_2_Timer_CH1_compare_CCM4_CCU52Timer_CH1_compare_CCM4_CCU5);
    idle_2_Timer_CH1_compare_CCM5_CCU52Timer_CH1_compare_CCM5_CCU5_assert: assert property(idle_2_Timer_CH1_compare_CCM5_CCU52Timer_CH1_compare_CCM5_CCU5);
    idle_2_Timer_CH1_compare_CCM6_CCU52Timer_CH1_compare_CCM6_CCU5_assert: assert property(idle_2_Timer_CH1_compare_CCM6_CCU52Timer_CH1_compare_CCM6_CCU5);
    idle_2_Timer_CH1_disabled_compare_CCM7_CCU52Timer_CH1_disabled_compare_CCM7_CCU5_assert: assert property(idle_2_Timer_CH1_disabled_compare_CCM7_CCU52Timer_CH1_disabled_compare_CCM7_CCU5);
    Timer_CH0_overflow_int_reset_intermediate_stateintermediate_2_Timer_CH0_overflow_int_reset2Timer_CH0_overflow_int_reset_assert: assert property(Timer_CH0_overflow_int_reset_intermediate_stateintermediate_2_Timer_CH0_overflow_int_reset2Timer_CH0_overflow_int_reset);
    idle_2_Timer_CH0q_overflow_int_set2Timer_CH0_overflow_int_set_assert: assert property(idle_2_Timer_CH0_overflow_int_set2Timer_CH0_overflow_int_set);
	idle_2_Timer_CH0_overflow_int_set2Timer_CH0_overflow_int_not_set_assert: assert property(idle_2_Timer_CH0_overflow_int_set2Timer_CH0_overflow_int_not_set);
    Timer_CH1_overflow_int_reset_intermediate_stateintermediate_2_Timer_CH1_overflow_int_reset2Timer_CH1_overflow_int_reset_assert: assert property(Timer_CH1_overflow_int_reset_intermediate_stateintermediate_2_Timer_CH1_overflow_int_reset2Timer_CH1_overflow_int_reset);
    idle_2_Timer_CH1_overflow_int_set2Timer_CH1_overflow_int_set_assert: assert property(idle_2_Timer_CH1_overflow_int_set2Timer_CH1_overflow_int_set);
	idle_2_Timer_CH1_overflow_int_set2Timer_CH1_overflow_int_not_set_assert: assert property(idle_2_Timer_CH1_overflow_int_set2Timer_CH1_overflow_int_not_set);

endmodule

//---------------------------------------------------------------------------------------------
bind tc_soc_timer timer_usf_props inst_timer_usf_props(.*);
//---------------------------------------------------------------------------------------------
