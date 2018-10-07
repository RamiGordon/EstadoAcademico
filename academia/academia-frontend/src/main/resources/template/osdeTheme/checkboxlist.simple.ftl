<#--
/*
 * $Id: checkboxlist.ftl 720258 2008-11-24 19:05:16Z musachy $
 *
 * Licensed to the Apache Software Foundation (ASF) under one
 * or more contributor license agreements.  See the NOTICE file
 * distributed with this work for additional information
 * regarding copyright ownership.  The ASF licenses this file
 * to you under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in compliance
 * with the License.  You may obtain a copy of the License at
 *
 *  http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied.  See the License for the
 * specific language governing permissions and limitations
 * under the License.
 */
-->

<script type="text/javascript">
	function changeSelected(check,item){
	  obj=document.getElementById(check);
	  td_obj=document.getElementById(item);
	  
  	  for(var q=0;q<td_obj.attributes.length;q++){
	 	if(td_obj.attributes.item(q).nodeName=="class"){
	  		if(obj.checked){
	    		td_obj.attributes.item(q).nodeValue='selected';
	    	}else{
	    		td_obj.attributes.item(q).nodeValue='';
	    	}
	    }
	  }
	}
	
	function readOnlyCheckBox() {
	   return false;
	}
		
</script>


<#assign itemCount = 0/>
<#if parameters.list??>
	<#-- Cambio la sintaxis de la condicion -->

	 <#if (parameters.readonly?? && ((parameters.readonly?is_boolean && parameters.readonly == true) || (!parameters.readonly?is_boolean && parameters.readonly[0] == "true")))>
		<#assign itemCount = 0/>
		<#assign itemCountAnteriores = "no"/>
	 	<@s.iterator value="parameters.list">
				<span>
					<#assign itemCount = itemCount + 1/>
					<#if parameters.listKey??>
						<#assign itemKey = stack.findValue(parameters.listKey)/>
					<#else>
						<#assign itemKey = stack.findValue('top')/>
					</#if>
					<#if parameters.listValue??>
						<#assign itemValue = stack.findString(parameters.listValue)?default("")/>
					<#else>
						<#assign itemValue = stack.findString('top')/>
					</#if>
					<#assign itemKeyStr=itemKey.toString() />
					<#if tag.contains(parameters.nameValue, itemKey)>
						
						<#if itemCountAnteriores == "yes">
							,
						<#else>
							<#assign itemCountAnteriores = "yes"/>
						</#if>
						${itemValue?html} 
					</#if>
				</span>
    	</@s.iterator>

	<#else>
		<div class="scrolling">
			<table class="checkboxList"  cellpadding="0" cellspacing="0">
			<#assign itemCount = 0/>
				<@s.iterator value="parameters.list">
					<tr>
					  
							<#assign itemCount = itemCount + 1/>
							<#if parameters.listKey??>
								<#assign itemKey = stack.findValue(parameters.listKey)/>
							<#else>
								<#assign itemKey = stack.findValue('top')/>
							</#if>
							<#if parameters.listValue??>
								<#assign itemValue = stack.findString(parameters.listValue)?default("")/>
							<#else>
								<#assign itemValue = stack.findString('top')/>
							</#if>
							<#assign itemKeyStr=itemKey.toString() />
							<#if tag.contains(parameters.nameValue, itemKey)>
								<td class="selected" id="${parameters.name?html}-td-${itemCount}" >
							</#if>
							<#if !tag.contains(parameters.nameValue, itemKey)>
								<td class=""  id="${parameters.name?html}-td-${itemCount}" >
							</#if>
							<input type="checkbox" name="${parameters.name?html}" value="${itemKeyStr?html}" id="${parameters.name?html}-${itemCount}"  <#rt/>
									<#if tag.contains(parameters.nameValue, itemKey)>
							 checked="checked"<#rt/>
									</#if>
									
									<#if parameters.title??>
							 title="${parameters.title?html}"<#rt/>
									</#if>
									<#include "/${parameters.templateDir}/simple/scripting-events.ftl" />
									<#include "/${parameters.templateDir}/simple/common-attributes.ftl" />
			
									onclick="javascript:changeSelected(this.id,'${parameters.name?html}-td-${itemCount}');" 
									
							/>
							<label for="${parameters.name?html}-${itemCount}" class="checkboxLabel">${itemValue?html}</label>
						</td>
				  </tr>
				</@s.iterator>
			</table>
	    </div>
	 </#if>

<#else>
  &nbsp;
</#if>