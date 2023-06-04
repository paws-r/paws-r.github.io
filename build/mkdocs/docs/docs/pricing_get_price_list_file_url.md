<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pricing_get_price_list_file_url</td>
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

This returns the URL that you can retrieve your Price List file from.
This URL is based on the `PriceListArn` and `FileFormat` that you
retrieve from the
[`list_price_lists`](https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_pricing_ListPriceLists.html)
response.

### Usage

    pricing_get_price_list_file_url(PriceListArn, FileFormat)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pricing_get_price_list_file_url_:_PriceListArn">PriceListArn</code></td>
<td><p>[required] The unique identifier that maps to where your Price
List files are located. <code>PriceListArn</code> can be obtained from
the <a
href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_pricing_ListPriceLists.html"><code>list_price_lists</code></a>
response.</p></td>
</tr>
<tr class="even">
<td><code
id="pricing_get_price_list_file_url_:_FileFormat">FileFormat</code></td>
<td><p>[required] The format that you want to retrieve your Price List
files in. The <code>FileFormat</code> can be obtained from the <a
href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_pricing_ListPriceLists.html"><code>list_price_lists</code></a>
response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Url = "string"
    )

### Request syntax

    svc$get_price_list_file_url(
      PriceListArn = "string",
      FileFormat = "string"
    )
