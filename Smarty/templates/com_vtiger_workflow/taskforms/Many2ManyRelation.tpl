{*<!--
/*************************************************************************************************
 * Copyright 2014 JPL TSolucio, S.L. -- This file is a part of TSOLUCIO coreBOS Customizations.
 * Licensed under the vtiger CRM Public License Version 1.1 (the "License"); you may not use this
 * file except in compliance with the License. You can redistribute it and/or modify it
 * under the terms of the License. JPL TSolucio, S.L. reserves all rights not expressly
 * granted by the License. coreBOS distributed by JPL TSolucio S.L. is distributed in
 * the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. Unless required by
 * applicable law or agreed to in writing, software distributed under the License is
 * distributed on an "AS IS" BASIS, WITHOUT ANY WARRANTIES OR CONDITIONS OF ANY KIND,
 * either express or implied. See the License for the specific language governing
 * permissions and limitations under the License. You may obtain a copy of the License
 * at <http://corebos.org/documentation/doku.php?id=en:devel:vpl11>
 *************************************************************************************************
 *  Author       : JPL TSolucio, S. L.
 *************************************************************************************************//
-->*}
<script type="text/javascript">var moduleName = '{$entityName}';</script>
<script src="modules/com_vtiger_workflow/resources/vtigerwebservices.js" type="text/javascript" charset="utf-8"></script>
<script src="modules/com_vtiger_workflow/resources/many2manyrelation.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript" src="include/js/vtlib.js"></script>
<script type="text/javascript" charset="utf-8">
var relrecords = {$task->relrecords|json_encode};
</script>
<br/>
<fieldset class="slds-form-element">
  <div class="slds-form-element__control">
    <span class="slds-radio">
      <input type="radio" id="radio-3" name="relAction" {if ($task->selAct eq "addrel")}{"checked"}{/if} value="addrel" />
      <label class="slds-radio__label" for="radio-3">
        <span class="slds-radio_faux"></span>
        <span class="slds-form-element__label">{'Add Relation'|@getTranslatedString}</span>
      </label>
    </span>
    <span class="slds-radio">
      <input type="radio" id="radio-4" name="relAction" {if ($task->selAct eq "delrel")}{"checked"}{/if} value="delrel" />
      <label class="slds-radio__label" for="radio-4">
        <span class="slds-radio_faux"></span>
        <span class="slds-form-element__label">{'Delete Relation'|@getTranslatedString}</span>
      </label>
    </span>
    <span class="slds-radio">
      <input type="radio" id="radio-5" name="relAction" {if ($task->selAct eq "delAllrel")}{"checked"}{/if} value="delAllrel" />
      <label class="slds-radio__label" for="radio-5">
        <span class="slds-radio_faux"></span>
        <span class="slds-form-element__label"> {'Delete All Relation'|@getTranslatedString}</span>
      </label>
    </span>
  </div>
</fieldset>
<br/>
<input type="hidden" name="idlist" value="{$task->idlist}" id="idlist">

<div class="slds-form-element">
  <label class="slds-form-element__label" for="relModlist">{'Select Related Module'|@getTranslatedString}</label><br>
    <div class="slds-form-element__control">
    <table class="slds-table slds-table_cell-buffer" style="width:100%">
      <tr>
        <td>
          <div class="slds-select_container">
            <select class="slds-select" id="relModlist_type">
              <option value="">{'No Module'|@getTranslatedString}</option>
            </select>
          </div>
        </td>
        <td>
          <svg class="slds-icon slds-icon-text-default" aria-hidden="true" onclick='return vtlib_open_popup_window("","relModlist","{$entityName}","");'>
            <use xlink:href="include/LD/assets/icons/utility-sprite/svg/symbols.svg#new"></use>
          </svg>
        </td>
      </tr>
    </table>
    </div>
</div>

<br/>
<table aria-multiselectable="true" class="slds-table slds-table_bordered slds-table_edit slds-table_fixed-layout slds-table_resizable-cols slds-tree slds-table_tree" role="treegrid">
  <thead>
    <tr class="slds-line-height_reset">
      <th class="slds-text-align_right" scope="col" style="width: 3.25rem;">
        <div class="slds-th__action slds-th__action_form">
          <div class="slds-checkbox">
            <input type="checkbox" name="options1" disabled id="checkbox-0" tabindex="-1" aria-labelledby="check-select-all-label column-group-header" value="checkbox-0" />
            <label class="slds-checkbox__label" for="checkbox-0" id="check-select-all-label">
              <span class="slds-checkbox_faux"></span>
            </label>
          </div>
        </div>
      </th>
      <th aria-label="{'Entity Name'|@getTranslatedString}" aria-sort="none" scope="col">
        <div class="slds-grid slds-grid_vertical-align-center slds-has-flexi-truncate">
          <span class="slds-truncate" title="{'Entity Name'|@getTranslatedString}">{'Entity Name'|@getTranslatedString}</span>
        </div>
      </th>
      <th aria-label="{'Entity Type'|@getTranslatedString}" aria-sort="none" scope="col" style="width: 18rem;">
        <div class="slds-grid slds-grid_vertical-align-center slds-has-flexi-truncate">
          <span class="slds-truncate" title="{'Entity Type'|@getTranslatedString}">{'Entity Type'|@getTranslatedString}</span>
        </div>
      </th>
    </tr>
  </thead>
  <tbody id="selected_recordsDiv">
  </tbody>
</table>