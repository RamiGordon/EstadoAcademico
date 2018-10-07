<#if parameters.type?? && parameters.type=="button">
<#-- -->
<#if (parameters.body)?default("")?length gt 0>${parameters.body}<#t/><#elseif parameters.label??><@s.property value="parameters.label"/><#rt/>
</#if>
<#-- -->
</button><!-- --><#lt/><#rt/>
<#else>
${parameters.body}<#t/>
</#if>
</td><#lt/>
		<td class="btn_table_right"></td><#nt/>
	</tr><#nt/>
</table><#nt/>