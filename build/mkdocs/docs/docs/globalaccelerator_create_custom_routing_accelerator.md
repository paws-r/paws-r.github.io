<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>globalaccelerator_create_custom_routing_accelerator</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Create a custom routing accelerator

### Description

Create a custom routing accelerator. A custom routing accelerator
directs traffic to one of possibly thousands of Amazon EC2 instance
destinations running in a single or multiple virtual private clouds
(VPC) subnet endpoints.

Be aware that, by default, all destination EC2 instances in a VPC subnet
endpoint cannot receive traffic. To enable all destinations to receive
traffic, or to specify individual port mappings that can receive
traffic, see the
[AllowCustomRoutingTraffic](https://docs.aws.amazon.com/global-accelerator/latest/api/API_AllowCustomRoutingTraffic.html)
operation.

Global Accelerator is a global service that supports endpoints in
multiple Amazon Web Services Regions but you must specify the US West
(Oregon) Region to create, update, or otherwise work with accelerators.
That is, for example, specify `⁠--region us-west-2⁠` on AWS CLI commands.

### Usage

    globalaccelerator_create_custom_routing_accelerator(Name, IpAddressType,
      IpAddresses, Enabled, IdempotencyToken, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="globalaccelerator_create_custom_routing_accelerator_:_Name">Name</code></td>
<td><p>[required] The name of a custom routing accelerator. The name can
have a maximum of 64 characters, must contain only alphanumeric
characters or hyphens (-), and must not begin or end with a
hyphen.</p></td>
</tr>
<tr class="even">
<td><code
id="globalaccelerator_create_custom_routing_accelerator_:_IpAddressType">IpAddressType</code></td>
<td><p>The IP address type that an accelerator supports. For a custom
routing accelerator, the value must be IPV4.</p></td>
</tr>
<tr class="odd">
<td><code
id="globalaccelerator_create_custom_routing_accelerator_:_IpAddresses">IpAddresses</code></td>
<td><p>Optionally, if you've added your own IP address pool to Global
Accelerator (BYOIP), you can choose an IPv4 address from your own pool
to use for the accelerator's static IPv4 address when you create an
accelerator.</p>
<p>After you bring an address range to Amazon Web Services, it appears
in your account as an address pool. When you create an accelerator, you
can assign one IPv4 address from your range to it. Global Accelerator
assigns you a second static IPv4 address from an Amazon IP address
range. If you bring two IPv4 address ranges to Amazon Web Services, you
can assign one IPv4 address from each range to your accelerator. This
restriction is because Global Accelerator assigns each address range to
a different network zone, for high availability.</p>
<p>You can specify one or two addresses, separated by a space. Do not
include the /32 suffix.</p>
<p>Note that you can't update IP addresses for an existing accelerator.
To change them, you must create a new accelerator with the new
addresses.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html">Bring
your own IP addresses (BYOIP)</a> in the <em>Global Accelerator
Developer Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="globalaccelerator_create_custom_routing_accelerator_:_Enabled">Enabled</code></td>
<td><p>Indicates whether an accelerator is enabled. The value is true or
false. The default value is true.</p>
<p>If the value is set to true, an accelerator cannot be deleted. If set
to false, the accelerator can be deleted.</p></td>
</tr>
<tr class="odd">
<td><code
id="globalaccelerator_create_custom_routing_accelerator_:_IdempotencyToken">IdempotencyToken</code></td>
<td><p>[required] A unique, case-sensitive identifier that you provide
to ensure the idempotency—that is, the uniqueness—of the
request.</p></td>
</tr>
<tr class="even">
<td><code
id="globalaccelerator_create_custom_routing_accelerator_:_Tags">Tags</code></td>
<td><p>Create tags for an accelerator.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/global-accelerator/latest/dg/tagging-in-global-accelerator.html">Tagging
in Global Accelerator</a> in the <em>Global Accelerator Developer
Guide</em>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Accelerator = list(
        AcceleratorArn = "string",
        Name = "string",
        IpAddressType = "IPV4"|"DUAL_STACK",
        Enabled = TRUE|FALSE,
        IpSets = list(
          list(
            IpFamily = "string",
            IpAddresses = list(
              "string"
            ),
            IpAddressFamily = "IPv4"|"IPv6"
          )
        ),
        DnsName = "string",
        Status = "DEPLOYED"|"IN_PROGRESS",
        CreatedTime = as.POSIXct(
          "2015-01-01"
        ),
        LastModifiedTime = as.POSIXct(
          "2015-01-01"
        )
      )
    )

### Request syntax

    svc$create_custom_routing_accelerator(
      Name = "string",
      IpAddressType = "IPV4"|"DUAL_STACK",
      IpAddresses = list(
        "string"
      ),
      Enabled = TRUE|FALSE,
      IdempotencyToken = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
