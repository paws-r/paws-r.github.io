<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_list_associations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns all State Manager associations in the current Amazon Web Services account and Amazon Web Services Region

### Description

Returns all State Manager associations in the current Amazon Web
Services account and Amazon Web Services Region. You can limit the
results to a specific State Manager association document or managed node
by specifying a filter. State Manager is a capability of Amazon Web
Services Systems Manager.

### Usage

    ssm_list_associations(AssociationFilterList, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssm_list_associations_:_AssociationFilterList">AssociationFilterList</code></td>
<td><p>One or more filters. Use a filter to return a more specific list
of results.</p>
<p>Filtering associations using the <code>InstanceID</code> attribute
only returns legacy associations created using the
<code>InstanceID</code> attribute. Associations targeting the managed
node that are part of the Target Attributes <code>ResourceGroup</code>
or <code>Tags</code> aren't returned.</p></td>
</tr>
<tr class="even">
<td><code id="ssm_list_associations_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to return for this call. The call
also returns a token that you can specify in a subsequent call to get
the next set of results.</p></td>
</tr>
<tr class="odd">
<td><code id="ssm_list_associations_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of items to return. (You received this
token from a previous call.)</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Associations = list(
        list(
          Name = "string",
          InstanceId = "string",
          AssociationId = "string",
          AssociationVersion = "string",
          DocumentVersion = "string",
          Targets = list(
            list(
              Key = "string",
              Values = list(
                "string"
              )
            )
          ),
          LastExecutionDate = as.POSIXct(
            "2015-01-01"
          ),
          Overview = list(
            Status = "string",
            DetailedStatus = "string",
            AssociationStatusAggregatedCount = list(
              123
            )
          ),
          ScheduleExpression = "string",
          AssociationName = "string",
          ScheduleOffset = 123,
          TargetMaps = list(
            list(
              list(
                "string"
              )
            )
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_associations(
      AssociationFilterList = list(
        list(
          key = "InstanceId"|"Name"|"AssociationId"|"AssociationStatusName"|"LastExecutedBefore"|"LastExecutedAfter"|"AssociationName"|"ResourceGroupName",
          value = "string"
        )
      ),
      MaxResults = 123,
      NextToken = "string"
    )
