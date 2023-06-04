<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>securityhub_describe_products</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about product integrations in Security Hub

### Description

Returns information about product integrations in Security Hub.

You can optionally provide an integration ARN. If you provide an
integration ARN, then the results only include that integration.

If you do not provide an integration ARN, then the results include all
of the available product integrations.

### Usage

    securityhub_describe_products(NextToken, MaxResults, ProductArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="securityhub_describe_products_:_NextToken">NextToken</code></td>
<td><p>The token that is required for pagination. On your first call to
the <code>describe_products</code> operation, set the value of this
parameter to <code>NULL</code>.</p>
<p>For subsequent calls to the operation, to continue listing data, set
the value of this parameter to the value returned from the previous
response.</p></td>
</tr>
<tr class="even">
<td><code
id="securityhub_describe_products_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return.</p></td>
</tr>
<tr class="odd">
<td><code
id="securityhub_describe_products_:_ProductArn">ProductArn</code></td>
<td><p>The ARN of the integration to return.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Products = list(
        list(
          ProductArn = "string",
          ProductName = "string",
          CompanyName = "string",
          Description = "string",
          Categories = list(
            "string"
          ),
          IntegrationTypes = list(
            "SEND_FINDINGS_TO_SECURITY_HUB"|"RECEIVE_FINDINGS_FROM_SECURITY_HUB"|"UPDATE_FINDINGS_IN_SECURITY_HUB"
          ),
          MarketplaceUrl = "string",
          ActivationUrl = "string",
          ProductSubscriptionResourcePolicy = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_products(
      NextToken = "string",
      MaxResults = 123,
      ProductArn = "string"
    )

### Examples

    ## Not run: 
    # The following example returns details about AWS services and third-party
    # products that Security Hub integrates with.
    svc$describe_products(
      MaxResults = 1L,
      NextToken = "NULL",
      ProductArn = "arn:aws:securityhub:us-east-1:517716713836:product/crowdstr..."
    )

    ## End(Not run)
