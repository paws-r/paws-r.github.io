<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>networkfirewall_create_firewall</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an Network Firewall Firewall and accompanying FirewallStatus for a VPC

### Description

Creates an Network Firewall Firewall and accompanying FirewallStatus for
a VPC.

The firewall defines the configuration settings for an Network Firewall
firewall. The settings that you can define at creation include the
firewall policy, the subnets in your VPC to use for the firewall
endpoints, and any tags that are attached to the firewall Amazon Web
Services resource.

After you create a firewall, you can provide additional settings, like
the logging configuration.

To update the settings for a firewall, you use the operations that apply
to the settings themselves, for example `update_logging_configuration`,
`associate_subnets`, and `update_firewall_delete_protection`.

To manage a firewall's tags, use the standard Amazon Web Services
resource tagging operations, `list_tags_for_resource`, `tag_resource`,
and `untag_resource`.

To retrieve information about firewalls, use `list_firewalls` and
`describe_firewall`.

### Usage

    networkfirewall_create_firewall(FirewallName, FirewallPolicyArn, VpcId,
      SubnetMappings, DeleteProtection, SubnetChangeProtection,
      FirewallPolicyChangeProtection, Description, Tags,
      EncryptionConfiguration)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="networkfirewall_create_firewall_:_FirewallName">FirewallName</code></td>
<td><p>[required] The descriptive name of the firewall. You can't change
the name of a firewall after you create it.</p></td>
</tr>
<tr class="even">
<td><code
id="networkfirewall_create_firewall_:_FirewallPolicyArn">FirewallPolicyArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the FirewallPolicy
that you want to use for the firewall.</p></td>
</tr>
<tr class="odd">
<td><code id="networkfirewall_create_firewall_:_VpcId">VpcId</code></td>
<td><p>[required] The unique identifier of the VPC where Network
Firewall should create the firewall.</p>
<p>You can't change this setting after you create the firewall.</p></td>
</tr>
<tr class="even">
<td><code
id="networkfirewall_create_firewall_:_SubnetMappings">SubnetMappings</code></td>
<td><p>[required] The public subnets to use for your Network Firewall
firewalls. Each subnet must belong to a different Availability Zone in
the VPC. Network Firewall creates a firewall endpoint in each
subnet.</p></td>
</tr>
<tr class="odd">
<td><code
id="networkfirewall_create_firewall_:_DeleteProtection">DeleteProtection</code></td>
<td><p>A flag indicating whether it is possible to delete the firewall.
A setting of <code>TRUE</code> indicates that the firewall is protected
against deletion. Use this setting to protect against accidentally
deleting a firewall that is in use. When you create a firewall, the
operation initializes this flag to <code>TRUE</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="networkfirewall_create_firewall_:_SubnetChangeProtection">SubnetChangeProtection</code></td>
<td><p>A setting indicating whether the firewall is protected against
changes to the subnet associations. Use this setting to protect against
accidentally modifying the subnet associations for a firewall that is in
use. When you create a firewall, the operation initializes this setting
to <code>TRUE</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="networkfirewall_create_firewall_:_FirewallPolicyChangeProtection">FirewallPolicyChangeProtection</code></td>
<td><p>A setting indicating whether the firewall is protected against a
change to the firewall policy association. Use this setting to protect
against accidentally modifying the firewall policy for a firewall that
is in use. When you create a firewall, the operation initializes this
setting to <code>TRUE</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="networkfirewall_create_firewall_:_Description">Description</code></td>
<td><p>A description of the firewall.</p></td>
</tr>
<tr class="odd">
<td><code id="networkfirewall_create_firewall_:_Tags">Tags</code></td>
<td><p>The key:value pairs to associate with the resource.</p></td>
</tr>
<tr class="even">
<td><code
id="networkfirewall_create_firewall_:_EncryptionConfiguration">EncryptionConfiguration</code></td>
<td><p>A complex type that contains settings for encryption of your
firewall resources.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Firewall = list(
        FirewallName = "string",
        FirewallArn = "string",
        FirewallPolicyArn = "string",
        VpcId = "string",
        SubnetMappings = list(
          list(
            SubnetId = "string",
            IPAddressType = "DUALSTACK"|"IPV4"|"IPV6"
          )
        ),
        DeleteProtection = TRUE|FALSE,
        SubnetChangeProtection = TRUE|FALSE,
        FirewallPolicyChangeProtection = TRUE|FALSE,
        Description = "string",
        FirewallId = "string",
        Tags = list(
          list(
            Key = "string",
            Value = "string"
          )
        ),
        EncryptionConfiguration = list(
          KeyId = "string",
          Type = "CUSTOMER_KMS"|"AWS_OWNED_KMS_KEY"
        )
      ),
      FirewallStatus = list(
        Status = "PROVISIONING"|"DELETING"|"READY",
        ConfigurationSyncStateSummary = "PENDING"|"IN_SYNC"|"CAPACITY_CONSTRAINED",
        SyncStates = list(
          list(
            Attachment = list(
              SubnetId = "string",
              EndpointId = "string",
              Status = "CREATING"|"DELETING"|"FAILED"|"ERROR"|"SCALING"|"READY",
              StatusMessage = "string"
            ),
            Config = list(
              list(
                SyncStatus = "PENDING"|"IN_SYNC"|"CAPACITY_CONSTRAINED",
                UpdateToken = "string"
              )
            )
          )
        ),
        CapacityUsageSummary = list(
          CIDRs = list(
            AvailableCIDRCount = 123,
            UtilizedCIDRCount = 123,
            IPSetReferences = list(
              list(
                ResolvedCIDRCount = 123
              )
            )
          )
        )
      )
    )

### Request syntax

    svc$create_firewall(
      FirewallName = "string",
      FirewallPolicyArn = "string",
      VpcId = "string",
      SubnetMappings = list(
        list(
          SubnetId = "string",
          IPAddressType = "DUALSTACK"|"IPV4"|"IPV6"
        )
      ),
      DeleteProtection = TRUE|FALSE,
      SubnetChangeProtection = TRUE|FALSE,
      FirewallPolicyChangeProtection = TRUE|FALSE,
      Description = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      EncryptionConfiguration = list(
        KeyId = "string",
        Type = "CUSTOMER_KMS"|"AWS_OWNED_KMS_KEY"
      )
    )
