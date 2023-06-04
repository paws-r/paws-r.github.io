<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicecatalog_describe_service_action_execution_parameters</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Finds the default parameters for a specific self-service action on a specific provisioned product and returns a map of the results to the user

### Description

Finds the default parameters for a specific self-service action on a
specific provisioned product and returns a map of the results to the
user.

### Usage

    servicecatalog_describe_service_action_execution_parameters(
      ProvisionedProductId, ServiceActionId, AcceptLanguage)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="servicecatalog_describe_service_action_execution_parameters_:_ProvisionedProductId">ProvisionedProductId</code></td>
<td><p>[required] The identifier of the provisioned product.</p></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_describe_service_action_execution_parameters_:_ServiceActionId">ServiceActionId</code></td>
<td><p>[required] The self-service action identifier.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_describe_service_action_execution_parameters_:_AcceptLanguage">AcceptLanguage</code></td>
<td><p>The language code.</p>
<ul>
<li><p><code>jp</code> - Japanese</p></li>
<li><p><code>zh</code> - Chinese</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ServiceActionParameters = list(
        list(
          Name = "string",
          Type = "string",
          DefaultValues = list(
            "string"
          )
        )
      )
    )

### Request syntax

    svc$describe_service_action_execution_parameters(
      ProvisionedProductId = "string",
      ServiceActionId = "string",
      AcceptLanguage = "string"
    )
