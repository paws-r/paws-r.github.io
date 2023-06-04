<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_fpga_images</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the Amazon FPGA Images (AFIs) available to you

### Description

Describes the Amazon FPGA Images (AFIs) available to you. These include
public AFIs, private AFIs that you own, and AFIs owned by other Amazon
Web Services accounts for which you have load permissions.

### Usage

    ec2_describe_fpga_images(DryRun, FpgaImageIds, Owners, Filters,
      NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_describe_fpga_images_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_fpga_images_:_FpgaImageIds">FpgaImageIds</code></td>
<td><p>The AFI IDs.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_describe_fpga_images_:_Owners">Owners</code></td>
<td><p>Filters the AFI by owner. Specify an Amazon Web Services account
ID, <code>self</code> (owner is the sender of the request), or an Amazon
Web Services owner alias (valid values are <code>amazon</code> |
<code>aws-marketplace</code>).</p></td>
</tr>
<tr class="even">
<td><code id="ec2_describe_fpga_images_:_Filters">Filters</code></td>
<td><p>The filters.</p>
<ul>
<li><p><code>create-time</code> - The creation time of the AFI.</p></li>
<li><p><code>fpga-image-id</code> - The FPGA image identifier (AFI
ID).</p></li>
<li><p><code>fpga-image-global-id</code> - The global FPGA image
identifier (AGFI ID).</p></li>
<li><p><code>name</code> - The name of the AFI.</p></li>
<li><p><code>owner-id</code> - The Amazon Web Services account ID of the
AFI owner.</p></li>
<li><p><code>product-code</code> - The product code.</p></li>
<li><p><code>shell-version</code> - The version of the Amazon Web
Services Shell that was used to create the bitstream.</p></li>
<li><p><code>state</code> - The state of the AFI (<code>pending</code> |
<code>failed</code> | <code>available</code> |
<code>unavailable</code>).</p></li>
<li><p><code>tag</code>:\&lt;key\&gt; - The key/value combination of a
tag assigned to the resource. Use the tag key in the filter name and the
tag value as the filter value. For example, to find all resources that
have a tag with the key <code>Owner</code> and the value
<code>TeamA</code>, specify <code>tag:Owner</code> for the filter name
and <code>TeamA</code> for the filter value.</p></li>
<li><p><code>tag-key</code> - The key of a tag assigned to the resource.
Use this filter to find all resources assigned a tag with a specific
key, regardless of the tag value.</p></li>
<li><p><code>update-time</code> - The time of the most recent
update.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_fpga_images_:_NextToken">NextToken</code></td>
<td><p>The token to retrieve the next page of results.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_fpga_images_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return in a single
call.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      FpgaImages = list(
        list(
          FpgaImageId = "string",
          FpgaImageGlobalId = "string",
          Name = "string",
          Description = "string",
          ShellVersion = "string",
          PciId = list(
            DeviceId = "string",
            VendorId = "string",
            SubsystemId = "string",
            SubsystemVendorId = "string"
          ),
          State = list(
            Code = "pending"|"failed"|"available"|"unavailable",
            Message = "string"
          ),
          CreateTime = as.POSIXct(
            "2015-01-01"
          ),
          UpdateTime = as.POSIXct(
            "2015-01-01"
          ),
          OwnerId = "string",
          OwnerAlias = "string",
          ProductCodes = list(
            list(
              ProductCodeId = "string",
              ProductCodeType = "devpay"|"marketplace"
            )
          ),
          Tags = list(
            list(
              Key = "string",
              Value = "string"
            )
          ),
          Public = TRUE|FALSE,
          DataRetentionSupport = TRUE|FALSE,
          InstanceTypes = list(
            "string"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_fpga_images(
      DryRun = TRUE|FALSE,
      FpgaImageIds = list(
        "string"
      ),
      Owners = list(
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
      NextToken = "string",
      MaxResults = 123
    )
