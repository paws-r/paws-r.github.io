<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicecatalog_describe_provisioned_product_plan</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about the resource changes for the specified plan

### Description

Gets information about the resource changes for the specified plan.

### Usage

    servicecatalog_describe_provisioned_product_plan(AcceptLanguage, PlanId,
      PageSize, PageToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="servicecatalog_describe_provisioned_product_plan_:_AcceptLanguage">AcceptLanguage</code></td>
<td><p>The language code.</p>
<ul>
<li><p><code>jp</code> - Japanese</p></li>
<li><p><code>zh</code> - Chinese</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_describe_provisioned_product_plan_:_PlanId">PlanId</code></td>
<td><p>[required] The plan identifier.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_describe_provisioned_product_plan_:_PageSize">PageSize</code></td>
<td><p>The maximum number of items to return with this call.</p></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_describe_provisioned_product_plan_:_PageToken">PageToken</code></td>
<td><p>The page token for the next set of results. To retrieve the first
set of results, use null.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ProvisionedProductPlanDetails = list(
        CreatedTime = as.POSIXct(
          "2015-01-01"
        ),
        PathId = "string",
        ProductId = "string",
        PlanName = "string",
        PlanId = "string",
        ProvisionProductId = "string",
        ProvisionProductName = "string",
        PlanType = "CLOUDFORMATION",
        ProvisioningArtifactId = "string",
        Status = "CREATE_IN_PROGRESS"|"CREATE_SUCCESS"|"CREATE_FAILED"|"EXECUTE_IN_PROGRESS"|"EXECUTE_SUCCESS"|"EXECUTE_FAILED",
        UpdatedTime = as.POSIXct(
          "2015-01-01"
        ),
        NotificationArns = list(
          "string"
        ),
        ProvisioningParameters = list(
          list(
            Key = "string",
            Value = "string",
            UsePreviousValue = TRUE|FALSE
          )
        ),
        Tags = list(
          list(
            Key = "string",
            Value = "string"
          )
        ),
        StatusMessage = "string"
      ),
      ResourceChanges = list(
        list(
          Action = "ADD"|"MODIFY"|"REMOVE",
          LogicalResourceId = "string",
          PhysicalResourceId = "string",
          ResourceType = "string",
          Replacement = "TRUE"|"FALSE"|"CONDITIONAL",
          Scope = list(
            "PROPERTIES"|"METADATA"|"CREATIONPOLICY"|"UPDATEPOLICY"|"DELETIONPOLICY"|"TAGS"
          ),
          Details = list(
            list(
              Target = list(
                Attribute = "PROPERTIES"|"METADATA"|"CREATIONPOLICY"|"UPDATEPOLICY"|"DELETIONPOLICY"|"TAGS",
                Name = "string",
                RequiresRecreation = "NEVER"|"CONDITIONALLY"|"ALWAYS"
              ),
              Evaluation = "STATIC"|"DYNAMIC",
              CausingEntity = "string"
            )
          )
        )
      ),
      NextPageToken = "string"
    )

### Request syntax

    svc$describe_provisioned_product_plan(
      AcceptLanguage = "string",
      PlanId = "string",
      PageSize = 123,
      PageToken = "string"
    )
