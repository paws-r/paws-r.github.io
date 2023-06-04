<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>billingconductor</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## AWSBillingConductor

### Description

Amazon Web Services Billing Conductor is a fully managed service that
you can use to customize a [pro
forma](https://docs.aws.amazon.com/billingconductor/latest/userguide/#eb-other-definitions)
version of your billing data each month, to accurately show or
chargeback your end customers. Amazon Web Services Billing Conductor
doesn't change the way you're billed by Amazon Web Services each month
by design. Instead, it provides you with a mechanism to configure,
generate, and display rates to certain customers over a given billing
period. You can also analyze the difference between the rates you apply
to your accounting groupings relative to your actual rates from Amazon
Web Services. As a result of your Amazon Web Services Billing Conductor
configuration, the payer account can also see the custom rate applied on
the billing details page of the Amazon Web Services Billing console, or
configure a cost and usage report per billing group.

This documentation shows how you can configure Amazon Web Services
Billing Conductor using its API. For more information about using the
Amazon Web Services Billing Conductor user interface, see the [Amazon
Web Services Billing Conductor User
Guide](https://docs.aws.amazon.com/billingconductor/latest/userguide/what-is-billingconductor.html).

### Usage

    billingconductor(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="billingconductor_:_config">config</code></td>
<td><p>Optional configuration of credentials, endpoint, and/or
region.</p>
<ul>
<li><p><strong>access_key_id</strong>: AWS access key ID</p></li>
<li><p><strong>secret_access_key</strong>: AWS secret access
key</p></li>
<li><p><strong>session_token</strong>: AWS temporary session
token</p></li>
<li><p><strong>profile</strong>: The name of a profile to use. If not
given, then the default profile is used.</p></li>
<li><p><strong>anonymous</strong>: Set anonymous credentials.</p></li>
<li><p><strong>endpoint</strong>: The complete URL to use for the
constructed client.</p></li>
<li><p><strong>region</strong>: The AWS Region used in instantiating the
client.</p></li>
<li><p><strong>close_connection</strong>: Immediately close all HTTP
connections.</p></li>
<li><p><strong>timeout</strong>: The time in seconds till a timeout
exception is thrown when attempting to make a connection. The default is
60 seconds.</p></li>
<li><p><strong>s3_force_path_style</strong>: Set this to
<code>true</code> to force the request to use path-style addressing,
i.e., <code
style="white-space: pre;">⁠http://s3.amazonaws.com/BUCKET/KEY⁠</code>.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A client for the service. You can call the service's operations using
syntax like `svc$operation(...)`, where `svc` is the name you've
assigned to the client. The available operations are listed in the
Operations section.

### Service syntax

    svc <- billingconductor(
      config = list(
        credentials = list(
          creds = list(
            access_key_id = "string",
            secret_access_key = "string",
            session_token = "string"
          ),
          profile = "string",
          anonymous = "logical"
        ),
        endpoint = "string",
        region = "string",
        close_connection = "logical",
        timeout = "numeric",
        s3_force_path_style = "logical"
      )
    )

### Operations

<table>
<tbody>
<tr class="odd">
<td style="text-align: left;"><a href="../billingconductor_associate_accounts/"> associate_accounts </a></td>
<td style="text-align: left;">Connects an array of account IDs in a
consolidated billing family to a predefined billing group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../billingconductor_associate_pricing_rules/"> associate_pricing_rules </a></td>
<td style="text-align: left;">Connects an array of PricingRuleArns to a
defined PricingPlan</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../billingconductor_batch_associate_resources_to_custom_line_item/"> batch_associate_resources_to_custom_line_item </a></td>
<td style="text-align: left;">Associates a batch of resources to a
percentage custom line item</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../billingconductor_batch_disassociate_resources_from_custom_line_item/"> batch_disassociate_resources_from_custom_line_item </a></td>
<td style="text-align: left;">Disassociates a batch of resources from a
percentage custom line item</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../billingconductor_create_billing_group/"> create_billing_group </a></td>
<td style="text-align: left;">Creates a billing group that resembles a
consolidated billing family that Amazon Web Services charges, based off
of the predefined pricing plan computation</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../billingconductor_create_custom_line_item/"> create_custom_line_item </a></td>
<td style="text-align: left;">Creates a custom line item that can be
used to create a one-time fixed charge that can be applied to a single
billing group for the current or previous billing period</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../billingconductor_create_pricing_plan/"> create_pricing_plan </a></td>
<td style="text-align: left;">Creates a pricing plan that is used for
computing Amazon Web Services charges for billing groups</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../billingconductor_create_pricing_rule/"> create_pricing_rule </a></td>
<td style="text-align: left;">Creates a pricing rule can be associated
to a pricing plan, or a set of pricing plans</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../billingconductor_delete_billing_group/"> delete_billing_group </a></td>
<td style="text-align: left;">Deletes a billing group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../billingconductor_delete_custom_line_item/"> delete_custom_line_item </a></td>
<td style="text-align: left;">Deletes the custom line item identified by
the given ARN in the current, or previous billing period</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../billingconductor_delete_pricing_plan/"> delete_pricing_plan </a></td>
<td style="text-align: left;">Deletes a pricing plan</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../billingconductor_delete_pricing_rule/"> delete_pricing_rule </a></td>
<td style="text-align: left;">Deletes the pricing rule that's identified
by the input Amazon Resource Name (ARN)</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../billingconductor_disassociate_accounts/"> disassociate_accounts </a></td>
<td style="text-align: left;">Removes the specified list of account IDs
from the given billing group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../billingconductor_disassociate_pricing_rules/"> disassociate_pricing_rules </a></td>
<td style="text-align: left;">Disassociates a list of pricing rules from
a pricing plan</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../billingconductor_list_account_associations/"> list_account_associations </a></td>
<td style="text-align: left;">This is a paginated call to list linked
accounts that are linked to the payer account for the specified time
period</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../billingconductor_list_billing_group_cost_reports/"> list_billing_group_cost_reports </a></td>
<td style="text-align: left;">A paginated call to retrieve a summary
report of actual Amazon Web Services charges and the calculated Amazon
Web Services charges based on the associated pricing plan of a billing
group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../billingconductor_list_billing_groups/"> list_billing_groups </a></td>
<td style="text-align: left;">A paginated call to retrieve a list of
billing groups for the given billing period</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../billingconductor_list_custom_line_items/"> list_custom_line_items </a></td>
<td style="text-align: left;">A paginated call to get a list of all
custom line items (FFLIs) for the given billing period</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../billingconductor_list_custom_line_item_versions/"> list_custom_line_item_versions </a></td>
<td style="text-align: left;">A paginated call to get a list of all
custom line item versions</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../billingconductor_list_pricing_plans/"> list_pricing_plans </a></td>
<td style="text-align: left;">A paginated call to get pricing plans for
the given billing period</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../billingconductor_list_pricing_plans_associated_with_pricing_rule/"> list_pricing_plans_associated_with_pricing_rule </a></td>
<td style="text-align: left;">A list of the pricing plans that are
associated with a pricing rule</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../billingconductor_list_pricing_rules/"> list_pricing_rules </a></td>
<td style="text-align: left;">Describes a pricing rule that can be
associated to a pricing plan, or set of pricing plans</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../billingconductor_list_pricing_rules_associated_to_pricing_plan/"> list_pricing_rules_associated_to_pricing_plan </a></td>
<td style="text-align: left;">Lists the pricing rules that are
associated with a pricing plan</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../billingconductor_list_resources_associated_to_custom_line_item/"> list_resources_associated_to_custom_line_item </a></td>
<td style="text-align: left;">List the resources that are associated to
a custom line item</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../billingconductor_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">A list the tags for a resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../billingconductor_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Associates the specified tags to a
resource with the specified resourceArn</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../billingconductor_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Deletes specified tags from a
resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../billingconductor_update_billing_group/"> update_billing_group </a></td>
<td style="text-align: left;">This updates an existing billing
group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../billingconductor_update_custom_line_item/"> update_custom_line_item </a></td>
<td style="text-align: left;">Update an existing custom line item in the
current or previous billing period</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../billingconductor_update_pricing_plan/"> update_pricing_plan </a></td>
<td style="text-align: left;">This updates an existing pricing plan</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../billingconductor_update_pricing_rule/"> update_pricing_rule </a></td>
<td style="text-align: left;">Updates an existing pricing rule</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- billingconductor()
    svc$associate_accounts(
      Foo = 123
    )

    ## End(Not run)
