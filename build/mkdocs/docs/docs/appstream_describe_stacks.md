<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>appstream_describe_stacks</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves a list that describes one or more specified stacks, if the stack names are provided

### Description

Retrieves a list that describes one or more specified stacks, if the
stack names are provided. Otherwise, all stacks in the account are
described.

### Usage

    appstream_describe_stacks(Names, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="appstream_describe_stacks_:_Names">Names</code></td>
<td><p>The names of the stacks to describe.</p></td>
</tr>
<tr class="even">
<td><code
id="appstream_describe_stacks_:_NextToken">NextToken</code></td>
<td><p>The pagination token to use to retrieve the next page of results
for this operation. If this value is null, it retrieves the first
page.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Stacks = list(
        list(
          Arn = "string",
          Name = "string",
          Description = "string",
          DisplayName = "string",
          CreatedTime = as.POSIXct(
            "2015-01-01"
          ),
          StorageConnectors = list(
            list(
              ConnectorType = "HOMEFOLDERS"|"GOOGLE_DRIVE"|"ONE_DRIVE",
              ResourceIdentifier = "string",
              Domains = list(
                "string"
              )
            )
          ),
          RedirectURL = "string",
          FeedbackURL = "string",
          StackErrors = list(
            list(
              ErrorCode = "STORAGE_CONNECTOR_ERROR"|"INTERNAL_SERVICE_ERROR",
              ErrorMessage = "string"
            )
          ),
          UserSettings = list(
            list(
              Action = "CLIPBOARD_COPY_FROM_LOCAL_DEVICE"|"CLIPBOARD_COPY_TO_LOCAL_DEVICE"|"FILE_UPLOAD"|"FILE_DOWNLOAD"|"PRINTING_TO_LOCAL_DEVICE"|"DOMAIN_PASSWORD_SIGNIN"|"DOMAIN_SMART_CARD_SIGNIN",
              Permission = "ENABLED"|"DISABLED"
            )
          ),
          ApplicationSettings = list(
            Enabled = TRUE|FALSE,
            SettingsGroup = "string",
            S3BucketName = "string"
          ),
          AccessEndpoints = list(
            list(
              EndpointType = "STREAMING",
              VpceId = "string"
            )
          ),
          EmbedHostDomains = list(
            "string"
          ),
          StreamingExperienceSettings = list(
            PreferredProtocol = "TCP"|"UDP"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_stacks(
      Names = list(
        "string"
      ),
      NextToken = "string"
    )
