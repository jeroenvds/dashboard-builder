<%--

    Copyright (C) 2012 JBoss Inc

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

          http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.

--%>
<%@ page import="org.jboss.dashboard.LocaleManager" %>
<%@ taglib uri="mvc_taglib.tld" prefix="mvc" %>
<%@ taglib uri="bui_taglib.tld" prefix="panel" %>
<%@ taglib uri="http://dashboard.jboss.org/taglibs/i18n-1.0" prefix="i18n" %>
<%@ taglib uri="resources.tld" prefix="resource" %>
<i18n:bundle id="bundle" baseName="org.jboss.dashboard.ui.messages" locale="<%=LocaleManager.currentLocale()%>"/>

<mvc:formatter name="org.jboss.dashboard.ui.panel.help.RenderPanelHelpFormatter">
    <%------------------------------------------------------------------------------------------------------------------------%>
    <mvc:fragment name="empty">
        No help!!!
    </mvc:fragment>
    <%------------------------------------------------------------------------------------------------------------------------%>
    <mvc:fragment name="outputStart">
        <table width="100%">
            <tr>
                <td><b><mvc:fragmentValue name="panelName"/></b></td>
            </tr>
            <tr>
                <td>

    </mvc:fragment>
    <%------------------------------------------------------------------------------------------------------------------------%>
    <mvc:fragment name="outputUsage">
                    <p><mvc:fragmentValue name="message"/></p>
    </mvc:fragment>
    <%------------------------------------------------------------------------------------------------------------------------%>
    <mvc:fragment name="paramsStart">
                    <p>
                        <b>
                            <i18n:message key="ui.panel.helpMode.parameters">
                                Parameters
                            </i18n:message>
                        </b>
                    </p>
                    <ul>
    </mvc:fragment>
    <%------------------------------------------------------------------------------------------------------------------------%>
    <mvc:fragment name="outputParam">
                        <li>
                            <i>
                                <mvc:fragmentValue name="paramName"/>
                            </i><br>
                            <mvc:fragmentValue name="paramValue"/>
                        </li>
    </mvc:fragment>
    <%------------------------------------------------------------------------------------------------------------------------%>
    <mvc:fragment name="paramsEnd">
                    </ul>
    </mvc:fragment>
    <%------------------------------------------------------------------------------------------------------------------------%>
    <mvc:fragment name="outputEnd">
                </td>
            </tr>
        </table>
    </mvc:fragment>
    <%------------------------------------------------------------------------------------------------------------------------%>
</mvc:formatter>
