<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directoryservice_describe_ldaps_settings</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the status of LDAP security for the specified directory

### Description

Describes the status of LDAP security for the specified directory.

### Usage

    directoryservice_describe_ldaps_settings(DirectoryId, Type, NextToken,
      Limit)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directoryservice_describe_ldaps_settings_:_DirectoryId">DirectoryId</code></td>
<td><p>[required] The identifier of the directory.</p></td>
</tr>
<tr class="even">
<td><code
id="directoryservice_describe_ldaps_settings_:_Type">Type</code></td>
<td><p>The type of LDAP security to enable. Currently only the value
<code>Client</code> is supported.</p></td>
</tr>
<tr class="odd">
<td><code
id="directoryservice_describe_ldaps_settings_:_NextToken">NextToken</code></td>
<td><p>The type of next token used for pagination.</p></td>
</tr>
<tr class="even">
<td><code
id="directoryservice_describe_ldaps_settings_:_Limit">Limit</code></td>
<td><p>Specifies the number of items that should be displayed on one
page.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      LDAPSSettingsInfo = list(
        list(
          LDAPSStatus = "Enabling"|"Enabled"|"EnableFailed"|"Disabled",
          LDAPSStatusReason = "string",
          LastUpdatedDateTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_ldaps_settings(
      DirectoryId = "string",
      Type = "Client",
      NextToken = "string",
      Limit = 123
    )
