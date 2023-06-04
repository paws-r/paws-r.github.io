<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pricing_get_attribute_values</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of attribute values

### Description

Returns a list of attribute values. Attributes are similar to the
details in a Price List API offer file. For a list of available
attributes, see [Offer File
Definitions](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/reading-an-offer.html#pps-defs)
in the [Billing and Cost Management User
Guide](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/billing-what-is.html).

### Usage

    pricing_get_attribute_values(ServiceCode, AttributeName, NextToken,
      MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pricing_get_attribute_values_:_ServiceCode">ServiceCode</code></td>
<td><p>[required] The service code for the service whose attributes you
want to retrieve. For example, if you want the retrieve an EC2
attribute, use <code>AmazonEC2</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="pricing_get_attribute_values_:_AttributeName">AttributeName</code></td>
<td><p>[required] The name of the attribute that you want to retrieve
the values for, such as <code>volumeType</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="pricing_get_attribute_values_:_NextToken">NextToken</code></td>
<td><p>The pagination token that indicates the next set of results that
you want to retrieve.</p></td>
</tr>
<tr class="even">
<td><code
id="pricing_get_attribute_values_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return in response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AttributeValues = list(
        list(
          Value = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$get_attribute_values(
      ServiceCode = "string",
      AttributeName = "string",
      NextToken = "string",
      MaxResults = 123
    )

### Examples

    ## Not run: 
    # This operation returns a list of values available for the given
    # attribute.
    svc$get_attribute_values(
      AttributeName = "volumeType",
      MaxResults = 2L,
      ServiceCode = "AmazonEC2"
    )

    ## End(Not run)
