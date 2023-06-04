<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pricing_list_price_lists</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This feature is in preview release and is subject to change

### Description

*This feature is in preview release and is subject to change. Your use
of Amazon Web Services Price List API is subject to the Beta Service
Participation terms of the
<span href="https://aws.amazon.com/service-terms/">Amazon Web Services
Service Terms</span> (Section 1.10).*

This returns a list of Price List references that the requester if
authorized to view, given a `ServiceCode`, `CurrencyCode`, and an
`EffectiveDate`. Use without a `RegionCode` filter to list Price List
references from all available Amazon Web Services Regions. Use with a
`RegionCode` filter to get the Price List reference that's specific to a
specific Amazon Web Services Region. You can use the `PriceListArn` from
the response to get your preferred Price List files through the
[`get_price_list_file_url`](https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_pricing_GetPriceListFileUrl.html)
API.

### Usage

    pricing_list_price_lists(ServiceCode, EffectiveDate, RegionCode,
      CurrencyCode, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pricing_list_price_lists_:_ServiceCode">ServiceCode</code></td>
<td><p>[required] The service code or the Savings Plan service code for
the attributes that you want to retrieve. For example, to get the list
of applicable Amazon EC2 price lists, use <code>AmazonEC2</code>. For a
full list of service codes containing On-Demand and Reserved Instance
(RI) pricing, use the <a
href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_pricing_DescribeServices.html#awscostmanagement-pricing_DescribeServices-request-FormatVersion"><code>describe_services</code></a>
API.</p>
<p>To retrieve the Compute Savings Plan price lists, use
<code>ComputeSavingsPlans</code>. To retrieve Machine Learning Savings
Plans price lists, use
<code>MachineLearningSavingsPlans</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="pricing_list_price_lists_:_EffectiveDate">EffectiveDate</code></td>
<td><p>[required] The date that the Price List file prices are effective
from.</p></td>
</tr>
<tr class="odd">
<td><code
id="pricing_list_price_lists_:_RegionCode">RegionCode</code></td>
<td><p>This is used to filter the Price List by Amazon Web Services
Region. For example, to get the price list only for the <code
style="white-space: pre;">⁠US East (N. Virginia)⁠</code> Region, use
<code>us-east-1</code>. If nothing is specified, you retrieve price
lists for all applicable Regions. The available <code>RegionCode</code>
list can be retrieved from <a
href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_pricing_GetAttributeValues.html"><code>get_attribute_values</code></a>
API.</p></td>
</tr>
<tr class="even">
<td><code
id="pricing_list_price_lists_:_CurrencyCode">CurrencyCode</code></td>
<td><p>[required] The three alphabetical character ISO-4217 currency
code that the Price List files are denominated in.</p></td>
</tr>
<tr class="odd">
<td><code
id="pricing_list_price_lists_:_NextToken">NextToken</code></td>
<td><p>The pagination token that indicates the next set of results that
you want to retrieve.</p></td>
</tr>
<tr class="even">
<td><code
id="pricing_list_price_lists_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return in the response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PriceLists = list(
        list(
          PriceListArn = "string",
          RegionCode = "string",
          CurrencyCode = "string",
          FileFormats = list(
            "string"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_price_lists(
      ServiceCode = "string",
      EffectiveDate = as.POSIXct(
        "2015-01-01"
      ),
      RegionCode = "string",
      CurrencyCode = "string",
      NextToken = "string",
      MaxResults = 123
    )
