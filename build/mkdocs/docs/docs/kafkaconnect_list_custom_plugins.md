<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kafkaconnect_list_custom_plugins</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of all of the custom plugins in this account and Region

### Description

Returns a list of all of the custom plugins in this account and Region.

### Usage

    kafkaconnect_list_custom_plugins(maxResults, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kafkaconnect_list_custom_plugins_:_maxResults">maxResults</code></td>
<td><p>The maximum number of custom plugins to list in one
response.</p></td>
</tr>
<tr class="even">
<td><code
id="kafkaconnect_list_custom_plugins_:_nextToken">nextToken</code></td>
<td><p>If the response of a ListCustomPlugins operation is truncated, it
will include a NextToken. Send this NextToken in a subsequent request to
continue listing from where the previous operation left off.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      customPlugins = list(
        list(
          creationTime = as.POSIXct(
            "2015-01-01"
          ),
          customPluginArn = "string",
          customPluginState = "CREATING"|"CREATE_FAILED"|"ACTIVE"|"UPDATING"|"UPDATE_FAILED"|"DELETING",
          description = "string",
          latestRevision = list(
            contentType = "JAR"|"ZIP",
            creationTime = as.POSIXct(
              "2015-01-01"
            ),
            description = "string",
            fileDescription = list(
              fileMd5 = "string",
              fileSize = 123
            ),
            location = list(
              s3Location = list(
                bucketArn = "string",
                fileKey = "string",
                objectVersion = "string"
              )
            ),
            revision = 123
          ),
          name = "string"
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_custom_plugins(
      maxResults = 123,
      nextToken = "string"
    )
