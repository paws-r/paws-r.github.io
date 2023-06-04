<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_addresses_attribute</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the attributes of the specified Elastic IP addresses

### Description

Describes the attributes of the specified Elastic IP addresses. For
requirements, see [Using reverse DNS for email
applications](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html#Using_Elastic_Addressing_Reverse_DNS).

### Usage

    ec2_describe_addresses_attribute(AllocationIds, Attribute, NextToken,
      MaxResults, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_describe_addresses_attribute_:_AllocationIds">AllocationIds</code></td>
<td><p>[EC2-VPC] The allocation IDs.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_addresses_attribute_:_Attribute">Attribute</code></td>
<td><p>The attribute of the IP address.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_addresses_attribute_:_NextToken">NextToken</code></td>
<td><p>The token for the next page of results.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_addresses_attribute_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return with a single call. To
retrieve the remaining results, make another call with the returned
<code>nextToken</code> value.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_addresses_attribute_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Addresses = list(
        list(
          PublicIp = "string",
          AllocationId = "string",
          PtrRecord = "string",
          PtrRecordUpdate = list(
            Value = "string",
            Status = "string",
            Reason = "string"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_addresses_attribute(
      AllocationIds = list(
        "string"
      ),
      Attribute = "domain-name",
      NextToken = "string",
      MaxResults = 123,
      DryRun = TRUE|FALSE
    )
