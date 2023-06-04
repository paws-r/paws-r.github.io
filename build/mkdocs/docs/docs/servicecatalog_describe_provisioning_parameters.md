<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicecatalog_describe_provisioning_parameters</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about the configuration required to provision the specified product using the specified provisioning artifact

### Description

Gets information about the configuration required to provision the
specified product using the specified provisioning artifact.

If the output contains a TagOption key with an empty list of values,
there is a TagOption conflict for that key. The end user cannot take
action to fix the conflict, and launch is not blocked. In subsequent
calls to `provision_product`, do not include conflicted TagOption keys
as tags, or this causes the error "Parameter validation failed: Missing
required parameter in Tags\[*N*\]:*Value*". Tag the provisioned product
with the value `sc-tagoption-conflict-portfolioId-productId`.

### Usage

    servicecatalog_describe_provisioning_parameters(AcceptLanguage,
      ProductId, ProductName, ProvisioningArtifactId,
      ProvisioningArtifactName, PathId, PathName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="servicecatalog_describe_provisioning_parameters_:_AcceptLanguage">AcceptLanguage</code></td>
<td><p>The language code.</p>
<ul>
<li><p><code>jp</code> - Japanese</p></li>
<li><p><code>zh</code> - Chinese</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_describe_provisioning_parameters_:_ProductId">ProductId</code></td>
<td><p>The product identifier. You must provide the product name or ID,
but not both.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_describe_provisioning_parameters_:_ProductName">ProductName</code></td>
<td><p>The name of the product. You must provide the name or ID, but not
both.</p></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_describe_provisioning_parameters_:_ProvisioningArtifactId">ProvisioningArtifactId</code></td>
<td><p>The identifier of the provisioning artifact. You must provide the
name or ID, but not both.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_describe_provisioning_parameters_:_ProvisioningArtifactName">ProvisioningArtifactName</code></td>
<td><p>The name of the provisioning artifact. You must provide the name
or ID, but not both.</p></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_describe_provisioning_parameters_:_PathId">PathId</code></td>
<td><p>The path identifier of the product. This value is optional if the
product has a default path, and required if the product has more than
one path. To list the paths for a product, use
<code>list_launch_paths</code>. You must provide the name or ID, but not
both.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_describe_provisioning_parameters_:_PathName">PathName</code></td>
<td><p>The name of the path. You must provide the name or ID, but not
both.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ProvisioningArtifactParameters = list(
        list(
          ParameterKey = "string",
          DefaultValue = "string",
          ParameterType = "string",
          IsNoEcho = TRUE|FALSE,
          Description = "string",
          ParameterConstraints = list(
            AllowedValues = list(
              "string"
            ),
            AllowedPattern = "string",
            ConstraintDescription = "string",
            MaxLength = "string",
            MinLength = "string",
            MaxValue = "string",
            MinValue = "string"
          )
        )
      ),
      ConstraintSummaries = list(
        list(
          Type = "string",
          Description = "string"
        )
      ),
      UsageInstructions = list(
        list(
          Type = "string",
          Value = "string"
        )
      ),
      TagOptions = list(
        list(
          Key = "string",
          Values = list(
            "string"
          )
        )
      ),
      ProvisioningArtifactPreferences = list(
        StackSetAccounts = list(
          "string"
        ),
        StackSetRegions = list(
          "string"
        )
      ),
      ProvisioningArtifactOutputs = list(
        list(
          Key = "string",
          Description = "string"
        )
      ),
      ProvisioningArtifactOutputKeys = list(
        list(
          Key = "string",
          Description = "string"
        )
      )
    )

### Request syntax

    svc$describe_provisioning_parameters(
      AcceptLanguage = "string",
      ProductId = "string",
      ProductName = "string",
      ProvisioningArtifactId = "string",
      ProvisioningArtifactName = "string",
      PathId = "string",
      PathName = "string"
    )
