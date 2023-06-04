<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_dhcp_options</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes one or more of your DHCP options sets

### Description

Describes one or more of your DHCP options sets.

For more information, see [DHCP options
sets](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_DHCP_Options.html)
in the *Amazon Virtual Private Cloud User Guide*.

### Usage

    ec2_describe_dhcp_options(DhcpOptionsIds, Filters, DryRun, NextToken,
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
id="ec2_describe_dhcp_options_:_DhcpOptionsIds">DhcpOptionsIds</code></td>
<td><p>The IDs of one or more DHCP options sets.</p>
<p>Default: Describes all your DHCP options sets.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_describe_dhcp_options_:_Filters">Filters</code></td>
<td><p>One or more filters.</p>
<ul>
<li><p><code>dhcp-options-id</code> - The ID of a DHCP options
set.</p></li>
<li><p><code>key</code> - The key for one of the options (for example,
<code>domain-name</code>).</p></li>
<li><p><code>value</code> - The value for one of the options.</p></li>
<li><p><code>owner-id</code> - The ID of the Amazon Web Services account
that owns the DHCP options set.</p></li>
<li><p><code>tag</code>:\&lt;key\&gt; - The key/value combination of a
tag assigned to the resource. Use the tag key in the filter name and the
tag value as the filter value. For example, to find all resources that
have a tag with the key <code>Owner</code> and the value
<code>TeamA</code>, specify <code>tag:Owner</code> for the filter name
and <code>TeamA</code> for the filter value.</p></li>
<li><p><code>tag-key</code> - The key of a tag assigned to the resource.
Use this filter to find all resources assigned a tag with a specific
key, regardless of the tag value.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code id="ec2_describe_dhcp_options_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_dhcp_options_:_NextToken">NextToken</code></td>
<td><p>The token returned from a previous paginated request. Pagination
continues from the end of the items returned by the previous
request.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_dhcp_options_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to return for this request. To get
the next page of items, make another request with the token returned in
the output. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination">Pagination</a>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DhcpOptions = list(
        list(
          DhcpConfigurations = list(
            list(
              Key = "string",
              Values = list(
                list(
                  Value = "string"
                )
              )
            )
          ),
          DhcpOptionsId = "string",
          OwnerId = "string",
          Tags = list(
            list(
              Key = "string",
              Value = "string"
            )
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_dhcp_options(
      DhcpOptionsIds = list(
        "string"
      ),
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      DryRun = TRUE|FALSE,
      NextToken = "string",
      MaxResults = 123
    )

### Examples

    ## Not run: 
    # This example describes the specified DHCP options set.
    svc$describe_dhcp_options(
      DhcpOptionsIds = list(
        "dopt-d9070ebb"
      )
    )

    ## End(Not run)
