<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kafkaconnect_list_worker_configurations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of all of the worker configurations in this account and Region

### Description

Returns a list of all of the worker configurations in this account and
Region.

### Usage

    kafkaconnect_list_worker_configurations(maxResults, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kafkaconnect_list_worker_configurations_:_maxResults">maxResults</code></td>
<td><p>The maximum number of worker configurations to list in one
response.</p></td>
</tr>
<tr class="even">
<td><code
id="kafkaconnect_list_worker_configurations_:_nextToken">nextToken</code></td>
<td><p>If the response of a ListWorkerConfigurations operation is
truncated, it will include a NextToken. Send this NextToken in a
subsequent request to continue listing from where the previous operation
left off.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      nextToken = "string",
      workerConfigurations = list(
        list(
          creationTime = as.POSIXct(
            "2015-01-01"
          ),
          description = "string",
          latestRevision = list(
            creationTime = as.POSIXct(
              "2015-01-01"
            ),
            description = "string",
            revision = 123
          ),
          name = "string",
          workerConfigurationArn = "string"
        )
      )
    )

### Request syntax

    svc$list_worker_configurations(
      maxResults = 123,
      nextToken = "string"
    )
