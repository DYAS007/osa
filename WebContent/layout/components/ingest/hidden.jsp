<%@ include file="/layout/taglibs.jsp" %>

<s:layout-definition>
<%--     <s:layout-component name="hidden"> --%>
        <div class="ingest-form-row">
<%--             <s:label for="${mdElement}"><fmt:message key="capture.${mdElement}"/></s:label> --%>
<%--             <span data-tooltip="${shorthelp}"><img src="img/icons/silk/help.png" class="helpicon" alt="[?]"/></span> --%>
			<c:if test="${mdElement == 'pid'}">
			    <s:hidden name="pid" value="${formElement.value}" class="textsearch required-${formElement.required}"/>
			</c:if>
			<c:if test="${mdElement != 'pid'}">
                <s:hidden name="${fieldname}[${mdElement}].value" class="required-${formElement.required}"/>
			</c:if>
            <s:hidden name="${fieldname}[${mdElement}].name" value="${mdElement}"/>
            <s:hidden name="${fieldname}[${mdElement}].generated" value="${formElement.generated}" />
        </div>
<%--     </s:layout-component> --%>
</s:layout-definition>
