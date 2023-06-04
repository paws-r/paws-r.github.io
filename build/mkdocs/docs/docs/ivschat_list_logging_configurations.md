<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ivschat_list_logging_configurations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets summary information about all your logging configurations in the AWS region where the API request is processed

### Description

Gets summary information about all your logging configurations in the
AWS region where the API request is processed.

### Usage

    ivschat_list_logging_configurations(maxResults, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ivschat_list_logging_configurations_:_maxResults">maxResults</code></td>
<td><p>Maximum number of logging configurations to return. Default:
50.</p></td>
</tr>
<tr class="even">
<td><code
id="ivschat_list_logging_configurations_:_nextToken">nextToken</code></td>
<td><p>The first logging configurations to retrieve. This is used for
pagination; see the <code>nextToken</code> response field.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      loggingConfigurations = list(
        list(
          arn = "string",
          createTime = as.POSIXct(
            "2015-01-01"
          ),
          destinationConfiguration = list(
            cloudWatchLogs = list(
              logGroupName = "string"
            ),
            firehose = list(
              deliveryStreamName = "string"
            ),
            s3 = list(
              bucketName = "string"
            )
          ),
          id = "string",
          name = "string",
          state = "CREATING"|"CREATE_FAILED"|"DELETING"|"DELETE_FAILED"|"UPDATING"|"UPDATE_FAILED"|"ACTIVE",
          tags = list(
            "string"
          ),
          updateTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_logging_configurations(
      maxResults = 123,
      nextToken = "string"
    )
