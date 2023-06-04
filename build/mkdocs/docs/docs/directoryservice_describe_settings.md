<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directoryservice_describe_settings</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves information about the configurable settings for the specified directory

### Description

Retrieves information about the configurable settings for the specified
directory.

### Usage

    directoryservice_describe_settings(DirectoryId, Status, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directoryservice_describe_settings_:_DirectoryId">DirectoryId</code></td>
<td><p>[required] The identifier of the directory for which to retrieve
information.</p></td>
</tr>
<tr class="even">
<td><code
id="directoryservice_describe_settings_:_Status">Status</code></td>
<td><p>The status of the directory settings for which to retrieve
information.</p></td>
</tr>
<tr class="odd">
<td><code
id="directoryservice_describe_settings_:_NextToken">NextToken</code></td>
<td><p>The <code>DescribeSettingsResult.NextToken</code> value from a
previous call to <code>describe_settings</code>. Pass null if this is
the first call.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DirectoryId = "string",
      SettingEntries = list(
        list(
          Type = "string",
          Name = "string",
          AllowedValues = "string",
          AppliedValue = "string",
          RequestedValue = "string",
          RequestStatus = "Requested"|"Updating"|"Updated"|"Failed"|"Default",
          RequestDetailedStatus = list(
            "Requested"|"Updating"|"Updated"|"Failed"|"Default"
          ),
          RequestStatusMessage = "string",
          LastUpdatedDateTime = as.POSIXct(
            "2015-01-01"
          ),
          LastRequestedDateTime = as.POSIXct(
            "2015-01-01"
          ),
          DataType = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_settings(
      DirectoryId = "string",
      Status = "Requested"|"Updating"|"Updated"|"Failed"|"Default",
      NextToken = "string"
    )
