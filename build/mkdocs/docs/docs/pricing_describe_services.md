<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pricing_describe_services</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the metadata for one service or a list of the metadata for all services

### Description

Returns the metadata for one service or a list of the metadata for all
services. Use this without a service code to get the service codes for
all services. Use it with a service code, such as `AmazonEC2`, to get
information specific to that service, such as the attribute names
available for that service. For example, some of the attribute names
available for EC2 are `volumeType`, `maxIopsVolume`, `operation`,
`locationType`, and `instanceCapacity10xlarge`.

### Usage

    pricing_describe_services(ServiceCode, FormatVersion, NextToken,
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
id="pricing_describe_services_:_ServiceCode">ServiceCode</code></td>
<td><p>The code for the service whose information you want to retrieve,
such as <code>AmazonEC2</code>. You can use the <code>ServiceCode</code>
to filter the results in a <code>get_products</code> call. To retrieve a
list of all services, leave this blank.</p></td>
</tr>
<tr class="even">
<td><code
id="pricing_describe_services_:_FormatVersion">FormatVersion</code></td>
<td><p>The format version that you want the response to be in.</p>
<p>Valid values are: <code>aws_v1</code></p></td>
</tr>
<tr class="odd">
<td><code
id="pricing_describe_services_:_NextToken">NextToken</code></td>
<td><p>The pagination token that indicates the next set of results that
you want to retrieve.</p></td>
</tr>
<tr class="even">
<td><code
id="pricing_describe_services_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results that you want returned in the
response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Services = list(
        list(
          ServiceCode = "string",
          AttributeNames = list(
            "string"
          )
        )
      ),
      FormatVersion = "string",
      NextToken = "string"
    )

### Request syntax

    svc$describe_services(
      ServiceCode = "string",
      FormatVersion = "string",
      NextToken = "string",
      MaxResults = 123
    )

### Examples

    ## Not run: 
    # Retrieves the service for the given Service Code.
    svc$describe_services(
      FormatVersion = "aws_v1",
      MaxResults = 1L,
      ServiceCode = "AmazonEC2"
    )

    ## End(Not run)
