<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>marketplacecatalog_describe_change_set</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides information about a given change set

### Description

Provides information about a given change set.

### Usage

    marketplacecatalog_describe_change_set(Catalog, ChangeSetId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="marketplacecatalog_describe_change_set_:_Catalog">Catalog</code></td>
<td><p>[required] Required. The catalog related to the request. Fixed
value: <code>AWSMarketplace</code></p></td>
</tr>
<tr class="even">
<td><code
id="marketplacecatalog_describe_change_set_:_ChangeSetId">ChangeSetId</code></td>
<td><p>[required] Required. The unique identifier for the
<code>start_change_set</code> request that you want to describe the
details for.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ChangeSetId = "string",
      ChangeSetArn = "string",
      ChangeSetName = "string",
      StartTime = "string",
      EndTime = "string",
      Status = "PREPARING"|"APPLYING"|"SUCCEEDED"|"CANCELLED"|"FAILED",
      FailureCode = "CLIENT_ERROR"|"SERVER_FAULT",
      FailureDescription = "string",
      ChangeSet = list(
        list(
          ChangeType = "string",
          Entity = list(
            Type = "string",
            Identifier = "string"
          ),
          Details = "string",
          ErrorDetailList = list(
            list(
              ErrorCode = "string",
              ErrorMessage = "string"
            )
          ),
          ChangeName = "string"
        )
      )
    )

### Request syntax

    svc$describe_change_set(
      Catalog = "string",
      ChangeSetId = "string"
    )
