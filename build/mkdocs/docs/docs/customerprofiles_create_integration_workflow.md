<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>customerprofiles_create_integration_workflow</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an integration workflow

### Description

Creates an integration workflow. An integration workflow is an async
process which ingests historic data and sets up an integration for
ongoing updates. The supported Amazon AppFlow sources are Salesforce,
ServiceNow, and Marketo.

### Usage

    customerprofiles_create_integration_workflow(DomainName, WorkflowType,
      IntegrationConfig, ObjectTypeName, RoleArn, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="customerprofiles_create_integration_workflow_:_DomainName">DomainName</code></td>
<td><p>[required] The unique name of the domain.</p></td>
</tr>
<tr class="even">
<td><code
id="customerprofiles_create_integration_workflow_:_WorkflowType">WorkflowType</code></td>
<td><p>[required] The type of workflow. The only supported value is
APPFLOW_INTEGRATION.</p></td>
</tr>
<tr class="odd">
<td><code
id="customerprofiles_create_integration_workflow_:_IntegrationConfig">IntegrationConfig</code></td>
<td><p>[required] Configuration data for integration workflow.</p></td>
</tr>
<tr class="even">
<td><code
id="customerprofiles_create_integration_workflow_:_ObjectTypeName">ObjectTypeName</code></td>
<td><p>[required] The name of the profile object type.</p></td>
</tr>
<tr class="odd">
<td><code
id="customerprofiles_create_integration_workflow_:_RoleArn">RoleArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the IAM role.
Customer Profiles assumes this role to create resources on your behalf
as part of workflow execution.</p></td>
</tr>
<tr class="even">
<td><code
id="customerprofiles_create_integration_workflow_:_Tags">Tags</code></td>
<td><p>The tags used to organize, track, or control access for this
resource.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      WorkflowId = "string",
      Message = "string"
    )

### Request syntax

    svc$create_integration_workflow(
      DomainName = "string",
      WorkflowType = "APPFLOW_INTEGRATION",
      IntegrationConfig = list(
        AppflowIntegration = list(
          FlowDefinition = list(
            Description = "string",
            FlowName = "string",
            KmsArn = "string",
            SourceFlowConfig = list(
              ConnectorProfileName = "string",
              ConnectorType = "Salesforce"|"Marketo"|"Zendesk"|"Servicenow"|"S3",
              IncrementalPullConfig = list(
                DatetimeTypeFieldName = "string"
              ),
              SourceConnectorProperties = list(
                Marketo = list(
                  Object = "string"
                ),
                S3 = list(
                  BucketName = "string",
                  BucketPrefix = "string"
                ),
                Salesforce = list(
                  Object = "string",
                  EnableDynamicFieldUpdate = TRUE|FALSE,
                  IncludeDeletedRecords = TRUE|FALSE
                ),
                ServiceNow = list(
                  Object = "string"
                ),
                Zendesk = list(
                  Object = "string"
                )
              )
            ),
            Tasks = list(
              list(
                ConnectorOperator = list(
                  Marketo = "PROJECTION"|"LESS_THAN"|"GREATER_THAN"|"BETWEEN"|"ADDITION"|"MULTIPLICATION"|"DIVISION"|"SUBTRACTION"|"MASK_ALL"|"MASK_FIRST_N"|"MASK_LAST_N"|"VALIDATE_NON_NULL"|"VALIDATE_NON_ZERO"|"VALIDATE_NON_NEGATIVE"|"VALIDATE_NUMERIC"|"NO_OP",
                  S3 = "PROJECTION"|"LESS_THAN"|"GREATER_THAN"|"BETWEEN"|"LESS_THAN_OR_EQUAL_TO"|"GREATER_THAN_OR_EQUAL_TO"|"EQUAL_TO"|"NOT_EQUAL_TO"|"ADDITION"|"MULTIPLICATION"|"DIVISION"|"SUBTRACTION"|"MASK_ALL"|"MASK_FIRST_N"|"MASK_LAST_N"|"VALIDATE_NON_NULL"|"VALIDATE_NON_ZERO"|"VALIDATE_NON_NEGATIVE"|"VALIDATE_NUMERIC"|"NO_OP",
                  Salesforce = "PROJECTION"|"LESS_THAN"|"CONTAINS"|"GREATER_THAN"|"BETWEEN"|"LESS_THAN_OR_EQUAL_TO"|"GREATER_THAN_OR_EQUAL_TO"|"EQUAL_TO"|"NOT_EQUAL_TO"|"ADDITION"|"MULTIPLICATION"|"DIVISION"|"SUBTRACTION"|"MASK_ALL"|"MASK_FIRST_N"|"MASK_LAST_N"|"VALIDATE_NON_NULL"|"VALIDATE_NON_ZERO"|"VALIDATE_NON_NEGATIVE"|"VALIDATE_NUMERIC"|"NO_OP",
                  ServiceNow = "PROJECTION"|"CONTAINS"|"LESS_THAN"|"GREATER_THAN"|"BETWEEN"|"LESS_THAN_OR_EQUAL_TO"|"GREATER_THAN_OR_EQUAL_TO"|"EQUAL_TO"|"NOT_EQUAL_TO"|"ADDITION"|"MULTIPLICATION"|"DIVISION"|"SUBTRACTION"|"MASK_ALL"|"MASK_FIRST_N"|"MASK_LAST_N"|"VALIDATE_NON_NULL"|"VALIDATE_NON_ZERO"|"VALIDATE_NON_NEGATIVE"|"VALIDATE_NUMERIC"|"NO_OP",
                  Zendesk = "PROJECTION"|"GREATER_THAN"|"ADDITION"|"MULTIPLICATION"|"DIVISION"|"SUBTRACTION"|"MASK_ALL"|"MASK_FIRST_N"|"MASK_LAST_N"|"VALIDATE_NON_NULL"|"VALIDATE_NON_ZERO"|"VALIDATE_NON_NEGATIVE"|"VALIDATE_NUMERIC"|"NO_OP"
                ),
                DestinationField = "string",
                SourceFields = list(
                  "string"
                ),
                TaskProperties = list(
                  "string"
                ),
                TaskType = "Arithmetic"|"Filter"|"Map"|"Mask"|"Merge"|"Truncate"|"Validate"
              )
            ),
            TriggerConfig = list(
              TriggerType = "Scheduled"|"Event"|"OnDemand",
              TriggerProperties = list(
                Scheduled = list(
                  ScheduleExpression = "string",
                  DataPullMode = "Incremental"|"Complete",
                  ScheduleStartTime = as.POSIXct(
                    "2015-01-01"
                  ),
                  ScheduleEndTime = as.POSIXct(
                    "2015-01-01"
                  ),
                  Timezone = "string",
                  ScheduleOffset = 123,
                  FirstExecutionFrom = as.POSIXct(
                    "2015-01-01"
                  )
                )
              )
            )
          ),
          Batches = list(
            list(
              StartTime = as.POSIXct(
                "2015-01-01"
              ),
              EndTime = as.POSIXct(
                "2015-01-01"
              )
            )
          )
        )
      ),
      ObjectTypeName = "string",
      RoleArn = "string",
      Tags = list(
        "string"
      )
    )
