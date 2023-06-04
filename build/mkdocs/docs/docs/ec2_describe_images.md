<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_images</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the specified images (AMIs, AKIs, and ARIs) available to you or all of the images available to you

### Description

Describes the specified images (AMIs, AKIs, and ARIs) available to you
or all of the images available to you.

The images available to you include public images, private images that
you own, and private images owned by other Amazon Web Services accounts
for which you have explicit launch permissions.

Recently deregistered images appear in the returned results for a short
interval and then return empty results. After all instances that
reference a deregistered AMI are terminated, specifying the ID of the
image will eventually return an error indicating that the AMI ID cannot
be found.

### Usage

    ec2_describe_images(ExecutableUsers, Filters, ImageIds, Owners,
      IncludeDeprecated, DryRun, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_describe_images_:_ExecutableUsers">ExecutableUsers</code></td>
<td><p>Scopes the images by users with explicit launch permissions.
Specify an Amazon Web Services account ID, <code>self</code> (the sender
of the request), or <code>all</code> (public AMIs).</p>
<ul>
<li><p>If you specify an Amazon Web Services account ID that is not your
own, only AMIs shared with that specific Amazon Web Services account ID
are returned. However, AMIs that are shared with the account’s
organization or organizational unit (OU) are not returned.</p></li>
<li><p>If you specify <code>self</code> or your own Amazon Web Services
account ID, AMIs shared with your account are returned. In addition,
AMIs that are shared with the organization or OU of which you are member
are also returned.</p></li>
<li><p>If you specify <code>all</code>, all public AMIs are
returned.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code id="ec2_describe_images_:_Filters">Filters</code></td>
<td><p>The filters.</p>
<ul>
<li><p><code>architecture</code> - The image architecture
(<code>i386</code> | <code>x86_64</code> | <code>arm64</code>).</p></li>
<li><p><code>block-device-mapping.delete-on-termination</code> - A
Boolean value that indicates whether the Amazon EBS volume is deleted on
instance termination.</p></li>
<li><p><code>block-device-mapping.device-name</code> - The device name
specified in the block device mapping (for example, <code
style="white-space: pre;">⁠/dev/sdh⁠</code> or
<code>xvdh</code>).</p></li>
<li><p><code>block-device-mapping.snapshot-id</code> - The ID of the
snapshot used for the Amazon EBS volume.</p></li>
<li><p><code>block-device-mapping.volume-size</code> - The volume size
of the Amazon EBS volume, in GiB.</p></li>
<li><p><code>block-device-mapping.volume-type</code> - The volume type
of the Amazon EBS volume (<code>io1</code> | <code>io2</code> |
<code>gp2</code> | <code>gp3</code> | <code>sc1 </code>|
<code>st1</code> | <code>standard</code>).</p></li>
<li><p><code>block-device-mapping.encrypted</code> - A Boolean that
indicates whether the Amazon EBS volume is encrypted.</p></li>
<li><p><code>creation-date</code> - The time when the image was created,
in the ISO 8601 format in the UTC time zone (YYYY-MM-DDThh:mm:ss.sssZ),
for example, <code
style="white-space: pre;">⁠2021-09-29T11:04:43.305Z⁠</code>. You can use a
wildcard (<code>*</code>), for example, <code
style="white-space: pre;">⁠2021-09-29T*⁠</code>, which matches an entire
day.</p></li>
<li><p><code>description</code> - The description of the image (provided
during image creation).</p></li>
<li><p><code>ena-support</code> - A Boolean that indicates whether
enhanced networking with ENA is enabled.</p></li>
<li><p><code>hypervisor</code> - The hypervisor type (<code>ovm</code> |
<code>xen</code>).</p></li>
<li><p><code>image-id</code> - The ID of the image.</p></li>
<li><p><code>image-type</code> - The image type (<code>machine</code> |
<code>kernel</code> | <code>ramdisk</code>).</p></li>
<li><p><code>is-public</code> - A Boolean that indicates whether the
image is public.</p></li>
<li><p><code>kernel-id</code> - The kernel ID.</p></li>
<li><p><code>manifest-location</code> - The location of the image
manifest.</p></li>
<li><p><code>name</code> - The name of the AMI (provided during image
creation).</p></li>
<li><p><code>owner-alias</code> - The owner alias (<code>amazon</code> |
<code>aws-marketplace</code>). The valid aliases are defined in an
Amazon-maintained list. This is not the Amazon Web Services account
alias that can be set using the IAM console. We recommend that you use
the <strong>Owner</strong> request parameter instead of this
filter.</p></li>
<li><p><code>owner-id</code> - The Amazon Web Services account ID of the
owner. We recommend that you use the <strong>Owner</strong> request
parameter instead of this filter.</p></li>
<li><p><code>platform</code> - The platform. The only supported value is
<code>windows</code>.</p></li>
<li><p><code>product-code</code> - The product code.</p></li>
<li><p><code>product-code.type</code> - The type of the product code
(<code>marketplace</code>).</p></li>
<li><p><code>ramdisk-id</code> - The RAM disk ID.</p></li>
<li><p><code>root-device-name</code> - The device name of the root
device volume (for example, <code
style="white-space: pre;">⁠/dev/sda1⁠</code>).</p></li>
<li><p><code>root-device-type</code> - The type of the root device
volume (<code>ebs</code> | <code>instance-store</code>).</p></li>
<li><p><code>state</code> - The state of the image
(<code>available</code> | <code>pending</code> |
<code>failed</code>).</p></li>
<li><p><code>state-reason-code</code> - The reason code for the state
change.</p></li>
<li><p><code>state-reason-message</code> - The message for the state
change.</p></li>
<li><p><code>sriov-net-support</code> - A value of <code>simple</code>
indicates that enhanced networking with the Intel 82599 VF interface is
enabled.</p></li>
<li><p><code>tag</code>:\&lt;key\&gt; - The key/value combination of a
tag assigned to the resource. Use the tag key in the filter name and the
tag value as the filter value. For example, to find all resources that
have a tag with the key <code>Owner</code> and the value
<code>TeamA</code>, specify <code>tag:Owner</code> for the filter name
and <code>TeamA</code> for the filter value.</p></li>
<li><p><code>tag-key</code> - The key of a tag assigned to the resource.
Use this filter to find all resources assigned a tag with a specific
key, regardless of the tag value.</p></li>
<li><p><code>virtualization-type</code> - The virtualization type
(<code>paravirtual</code> | <code>hvm</code>).</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code id="ec2_describe_images_:_ImageIds">ImageIds</code></td>
<td><p>The image IDs.</p>
<p>Default: Describes all images available to you.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_describe_images_:_Owners">Owners</code></td>
<td><p>Scopes the results to images with the specified owners. You can
specify a combination of Amazon Web Services account IDs,
<code>self</code>, <code>amazon</code>, and
<code>aws-marketplace</code>. If you omit this parameter, the results
include all images for which you have launch permissions, regardless of
ownership.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_images_:_IncludeDeprecated">IncludeDeprecated</code></td>
<td><p>Specifies whether to include deprecated AMIs.</p>
<p>Default: No deprecated AMIs are included in the response.</p>
<p>If you are the AMI owner, all deprecated AMIs appear in the response
regardless of what you specify for this parameter.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_describe_images_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_describe_images_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to return for this request. To get
the next page of items, make another request with the token returned in
the output. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination">Pagination</a>.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_describe_images_:_NextToken">NextToken</code></td>
<td><p>The token returned from a previous paginated request. Pagination
continues from the end of the items returned by the previous
request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Images = list(
        list(
          Architecture = "i386"|"x86_64"|"arm64"|"x86_64_mac"|"arm64_mac",
          CreationDate = "string",
          ImageId = "string",
          ImageLocation = "string",
          ImageType = "machine"|"kernel"|"ramdisk",
          Public = TRUE|FALSE,
          KernelId = "string",
          OwnerId = "string",
          Platform = "Windows",
          PlatformDetails = "string",
          UsageOperation = "string",
          ProductCodes = list(
            list(
              ProductCodeId = "string",
              ProductCodeType = "devpay"|"marketplace"
            )
          ),
          RamdiskId = "string",
          State = "pending"|"available"|"invalid"|"deregistered"|"transient"|"failed"|"error",
          BlockDeviceMappings = list(
            list(
              DeviceName = "string",
              VirtualName = "string",
              Ebs = list(
                DeleteOnTermination = TRUE|FALSE,
                Iops = 123,
                SnapshotId = "string",
                VolumeSize = 123,
                VolumeType = "standard"|"io1"|"io2"|"gp2"|"sc1"|"st1"|"gp3",
                KmsKeyId = "string",
                Throughput = 123,
                OutpostArn = "string",
                Encrypted = TRUE|FALSE
              ),
              NoDevice = "string"
            )
          ),
          Description = "string",
          EnaSupport = TRUE|FALSE,
          Hypervisor = "ovm"|"xen",
          ImageOwnerAlias = "string",
          Name = "string",
          RootDeviceName = "string",
          RootDeviceType = "ebs"|"instance-store",
          SriovNetSupport = "string",
          StateReason = list(
            Code = "string",
            Message = "string"
          ),
          Tags = list(
            list(
              Key = "string",
              Value = "string"
            )
          ),
          VirtualizationType = "hvm"|"paravirtual",
          BootMode = "legacy-bios"|"uefi"|"uefi-preferred",
          TpmSupport = "v2.0",
          DeprecationTime = "string",
          ImdsSupport = "v2.0"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_images(
      ExecutableUsers = list(
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
      ImageIds = list(
        "string"
      ),
      Owners = list(
        "string"
      ),
      IncludeDeprecated = TRUE|FALSE,
      DryRun = TRUE|FALSE,
      MaxResults = 123,
      NextToken = "string"
    )

### Examples

    ## Not run: 
    # This example describes the specified AMI.
    svc$describe_images(
      ImageIds = list(
        "ami-5731123e"
      )
    )

    ## End(Not run)
