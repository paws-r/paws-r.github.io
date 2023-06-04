<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspaces_modify_saml_properties</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies multiple properties related to SAML 2

### Description

Modifies multiple properties related to SAML 2.0 authentication,
including the enablement status, user access URL, and relay state
parameter name that are used for configuring federation with an SAML 2.0
identity provider.

### Usage

    workspaces_modify_saml_properties(ResourceId, SamlProperties,
      PropertiesToDelete)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workspaces_modify_saml_properties_:_ResourceId">ResourceId</code></td>
<td><p>[required] The directory identifier for which you want to
configure SAML properties.</p></td>
</tr>
<tr class="even">
<td><code
id="workspaces_modify_saml_properties_:_SamlProperties">SamlProperties</code></td>
<td><p>The properties for configuring SAML 2.0 authentication.</p></td>
</tr>
<tr class="odd">
<td><code
id="workspaces_modify_saml_properties_:_PropertiesToDelete">PropertiesToDelete</code></td>
<td><p>The SAML properties to delete as part of your request.</p>
<p>Specify one of the following options:</p>
<ul>
<li><p><code>SAML_PROPERTIES_USER_ACCESS_URL</code> to delete the user
access URL.</p></li>
<li><p><code>SAML_PROPERTIES_RELAY_STATE_PARAMETER_NAME</code> to delete
the relay state parameter name.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$modify_saml_properties(
      ResourceId = "string",
      SamlProperties = list(
        Status = "DISABLED"|"ENABLED"|"ENABLED_WITH_DIRECTORY_LOGIN_FALLBACK",
        UserAccessUrl = "string",
        RelayStateParameterName = "string"
      ),
      PropertiesToDelete = list(
        "SAML_PROPERTIES_USER_ACCESS_URL"|"SAML_PROPERTIES_RELAY_STATE_PARAMETER_NAME"
      )
    )
