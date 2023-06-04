<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ivschat_list_rooms</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets summary information about all your rooms in the AWS region where the API request is processed

### Description

Gets summary information about all your rooms in the AWS region where
the API request is processed. Results are sorted in descending order of
`updateTime`.

### Usage

    ivschat_list_rooms(loggingConfigurationIdentifier, maxResults,
      messageReviewHandlerUri, name, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ivschat_list_rooms_:_loggingConfigurationIdentifier">loggingConfigurationIdentifier</code></td>
<td><p>Logging-configuration identifier.</p></td>
</tr>
<tr class="even">
<td><code id="ivschat_list_rooms_:_maxResults">maxResults</code></td>
<td><p>Maximum number of rooms to return. Default: 50.</p></td>
</tr>
<tr class="odd">
<td><code
id="ivschat_list_rooms_:_messageReviewHandlerUri">messageReviewHandlerUri</code></td>
<td><p>Filters the list to match the specified message review handler
URI.</p></td>
</tr>
<tr class="even">
<td><code id="ivschat_list_rooms_:_name">name</code></td>
<td><p>Filters the list to match the specified room name.</p></td>
</tr>
<tr class="odd">
<td><code id="ivschat_list_rooms_:_nextToken">nextToken</code></td>
<td><p>The first room to retrieve. This is used for pagination; see the
<code>nextToken</code> response field.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      nextToken = "string",
      rooms = list(
        list(
          arn = "string",
          createTime = as.POSIXct(
            "2015-01-01"
          ),
          id = "string",
          loggingConfigurationIdentifiers = list(
            "string"
          ),
          messageReviewHandler = list(
            fallbackResult = "ALLOW"|"DENY",
            uri = "string"
          ),
          name = "string",
          tags = list(
            "string"
          ),
          updateTime = as.POSIXct(
            "2015-01-01"
          )
        )
      )
    )

### Request syntax

    svc$list_rooms(
      loggingConfigurationIdentifier = "string",
      maxResults = 123,
      messageReviewHandlerUri = "string",
      name = "string",
      nextToken = "string"
    )
