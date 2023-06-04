<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>customerprofiles_get_workflow</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Get details of specified workflow

### Description

Get details of specified workflow.

### Usage

    customerprofiles_get_workflow(DomainName, WorkflowId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="customerprofiles_get_workflow_:_DomainName">DomainName</code></td>
<td><p>[required] The unique name of the domain.</p></td>
</tr>
<tr class="even">
<td><code
id="customerprofiles_get_workflow_:_WorkflowId">WorkflowId</code></td>
<td><p>[required] Unique identifier for the workflow.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      WorkflowId = "string",
      WorkflowType = "APPFLOW_INTEGRATION",
      Status = "NOT_STARTED"|"IN_PROGRESS"|"COMPLETE"|"FAILED"|"SPLIT"|"RETRY"|"CANCELLED",
      ErrorDescription = "string",
      StartDate = as.POSIXct(
        "2015-01-01"
      ),
      LastUpdatedAt = as.POSIXct(
        "2015-01-01"
      ),
      Attributes = list(
        AppflowIntegration = list(
          SourceConnectorType = "Salesforce"|"Marketo"|"Zendesk"|"Servicenow"|"S3",
          ConnectorProfileName = "string",
          RoleArn = "string"
        )
      ),
      Metrics = list(
        AppflowIntegration = list(
          RecordsProcessed = 123,
          StepsCompleted = 123,
          TotalSteps = 123
        )
      )
    )

### Request syntax

    svc$get_workflow(
      DomainName = "string",
      WorkflowId = "string"
    )
