<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>customerprofiles_put_integration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds an integration between the service and a third-party service, which includes Amazon AppFlow and Amazon Connect

### Description

Adds an integration between the service and a third-party service, which
includes Amazon AppFlow and Amazon Connect.

An integration can belong to only one domain.

To add or remove tags on an existing Integration, see
[TagResource](https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_TagResource.html)
/
[UntagResource](https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_UntagResource.html).

### Usage

    customerprofiles_put_integration(DomainName, Uri, ObjectTypeName, Tags,
      FlowDefinition, ObjectTypeNames)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="customerprofiles_put_integration_:_DomainName">DomainName</code></td>
<td><p>[required] The unique name of the domain.</p></td>
</tr>
<tr class="even">
<td><code id="customerprofiles_put_integration_:_Uri">Uri</code></td>
<td><p>The URI of the S3 bucket or any other type of data
source.</p></td>
</tr>
<tr class="odd">
<td><code
id="customerprofiles_put_integration_:_ObjectTypeName">ObjectTypeName</code></td>
<td><p>The name of the profile object type.</p></td>
</tr>
<tr class="even">
<td><code id="customerprofiles_put_integration_:_Tags">Tags</code></td>
<td><p>The tags used to organize, track, or control access for this
resource.</p></td>
</tr>
<tr class="odd">
<td><code
id="customerprofiles_put_integration_:_FlowDefinition">FlowDefinition</code></td>
<td><p>The configuration that controls how Customer Profiles retrieves
data from the source.</p></td>
</tr>
<tr class="even">
<td><code
id="customerprofiles_put_integration_:_ObjectTypeNames">ObjectTypeNames</code></td>
<td><p>A map in which each key is an event type from an external
application such as Segment or Shopify, and each value is an
<code>ObjectTypeName</code> (template) used to ingest the event. It
supports the following event types: <code>SegmentIdentify</code>,
<code>ShopifyCreateCustomers</code>,
<code>ShopifyUpdateCustomers</code>,
<code>ShopifyCreateDraftOrders</code>,
<code>ShopifyUpdateDraftOrders</code>, <code>ShopifyCreateOrders</code>,
and <code>ShopifyUpdatedOrders</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DomainName = "string",
      Uri = "string",
      ObjectTypeName = "string",
      CreatedAt = as.POSIXct(
        "2015-01-01"
      ),
      LastUpdatedAt = as.POSIXct(
        "2015-01-01"
      ),
      Tags = list(
        "string"
      ),
      ObjectTypeNames = list(
        "string"
      ),
      WorkflowId = "string",
      IsUnstructured = TRUE|FALSE
    )

### Request syntax

    svc$put_integration(
      DomainName = "string",
      Uri = "string",
      ObjectTypeName = "string",
      Tags = list(
        "string"
      ),
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
      ObjectTypeNames = list(
        "string"
      )
    )
