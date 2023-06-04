<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicecatalog_list_provisioning_artifacts_for_service_action</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all provisioning artifacts (also known as versions) for the specified self-service action

### Description

Lists all provisioning artifacts (also known as versions) for the
specified self-service action.

### Usage

    servicecatalog_list_provisioning_artifacts_for_service_action(
      ServiceActionId, PageSize, PageToken, AcceptLanguage)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="servicecatalog_list_provisioning_artifacts_for_service_action_:_ServiceActionId">ServiceActionId</code></td>
<td><p>[required] The self-service action identifier. For example,
<code>act-fs7abcd89wxyz</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_list_provisioning_artifacts_for_service_action_:_PageSize">PageSize</code></td>
<td><p>The maximum number of items to return with this call.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_list_provisioning_artifacts_for_service_action_:_PageToken">PageToken</code></td>
<td><p>The page token for the next set of results. To retrieve the first
set of results, use null.</p></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_list_provisioning_artifacts_for_service_action_:_AcceptLanguage">AcceptLanguage</code></td>
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
      ProvisioningArtifactViews = list(
        list(
          ProductViewSummary = list(
            Id = "string",
            ProductId = "string",
            Name = "string",
            Owner = "string",
            ShortDescription = "string",
            Type = "CLOUD_FORMATION_TEMPLATE"|"MARKETPLACE"|"TERRAFORM_OPEN_SOURCE",
            Distributor = "string",
            HasDefaultPath = TRUE|FALSE,
            SupportEmail = "string",
            SupportDescription = "string",
            SupportUrl = "string"
          ),
          ProvisioningArtifact = list(
            Id = "string",
            Name = "string",
            Description = "string",
            CreatedTime = as.POSIXct(
              "2015-01-01"
            ),
            Guidance = "DEFAULT"|"DEPRECATED"
          )
        )
      ),
      NextPageToken = "string"
    )

### Request syntax

    svc$list_provisioning_artifacts_for_service_action(
      ServiceActionId = "string",
      PageSize = 123,
      PageToken = "string",
      AcceptLanguage = "string"
    )
