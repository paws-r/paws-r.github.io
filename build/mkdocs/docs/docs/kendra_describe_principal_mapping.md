<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kendra_describe_principal_mapping</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the processing of PUT and DELETE actions for mapping users to their groups

### Description

Describes the processing of `PUT` and `DELETE` actions for mapping users
to their groups. This includes information on the status of actions
currently processing or yet to be processed, when actions were last
updated, when actions were received by Amazon Kendra, the latest action
that should process and apply after other actions, and useful error
messages if an action could not be processed.

`describe_principal_mapping` is currently not supported in the Amazon
Web Services GovCloud (US-West) region.

### Usage

    kendra_describe_principal_mapping(IndexId, DataSourceId, GroupId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kendra_describe_principal_mapping_:_IndexId">IndexId</code></td>
<td><p>[required] The identifier of the index required to check the
processing of <code>PUT</code> and <code>DELETE</code> actions for
mapping users to their groups.</p></td>
</tr>
<tr class="even">
<td><code
id="kendra_describe_principal_mapping_:_DataSourceId">DataSourceId</code></td>
<td><p>The identifier of the data source to check the processing of
<code>PUT</code> and <code>DELETE</code> actions for mapping users to
their groups.</p></td>
</tr>
<tr class="odd">
<td><code
id="kendra_describe_principal_mapping_:_GroupId">GroupId</code></td>
<td><p>[required] The identifier of the group required to check the
processing of <code>PUT</code> and <code>DELETE</code> actions for
mapping users to their groups.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      IndexId = "string",
      DataSourceId = "string",
      GroupId = "string",
      GroupOrderingIdSummaries = list(
        list(
          Status = "FAILED"|"SUCCEEDED"|"PROCESSING"|"DELETING"|"DELETED",
          LastUpdatedAt = as.POSIXct(
            "2015-01-01"
          ),
          ReceivedAt = as.POSIXct(
            "2015-01-01"
          ),
          OrderingId = 123,
          FailureReason = "string"
        )
      )
    )

### Request syntax

    svc$describe_principal_mapping(
      IndexId = "string",
      DataSourceId = "string",
      GroupId = "string"
    )
