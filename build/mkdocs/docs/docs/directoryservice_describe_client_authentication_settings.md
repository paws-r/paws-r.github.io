<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directoryservice_describe_client_authentication_settings</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves information about the type of client authentication for the specified directory, if the type is specified

### Description

Retrieves information about the type of client authentication for the
specified directory, if the type is specified. If no type is specified,
information about all client authentication types that are supported for
the specified directory is retrieved. Currently, only `SmartCard` is
supported.

### Usage

    directoryservice_describe_client_authentication_settings(DirectoryId,
      Type, NextToken, Limit)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directoryservice_describe_client_authentication_settings_:_DirectoryId">DirectoryId</code></td>
<td><p>[required] The identifier of the directory for which to retrieve
information.</p></td>
</tr>
<tr class="even">
<td><code
id="directoryservice_describe_client_authentication_settings_:_Type">Type</code></td>
<td><p>The type of client authentication for which to retrieve
information. If no type is specified, a list of all client
authentication types that are supported for the specified directory is
retrieved.</p></td>
</tr>
<tr class="odd">
<td><code
id="directoryservice_describe_client_authentication_settings_:_NextToken">NextToken</code></td>
<td><p>The <em>DescribeClientAuthenticationSettingsResult.NextToken</em>
value from a previous call to
<code>describe_client_authentication_settings</code>. Pass null if this
is the first call.</p></td>
</tr>
<tr class="even">
<td><code
id="directoryservice_describe_client_authentication_settings_:_Limit">Limit</code></td>
<td><p>The maximum number of items to return. If this value is zero, the
maximum number of items is specified by the limitations of the
operation.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ClientAuthenticationSettingsInfo = list(
        list(
          Type = "SmartCard"|"SmartCardOrPassword",
          Status = "Enabled"|"Disabled",
          LastUpdatedDateTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_client_authentication_settings(
      DirectoryId = "string",
      Type = "SmartCard"|"SmartCardOrPassword",
      NextToken = "string",
      Limit = 123
    )
