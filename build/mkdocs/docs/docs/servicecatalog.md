<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicecatalog</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## AWS Service Catalog

### Description

Service Catalog

[Service Catalog](https://aws.amazon.com/servicecatalog/) enables
organizations to create and manage catalogs of IT services that are
approved for Amazon Web Services. To get the most out of this
documentation, you should be familiar with the terminology discussed in
[Service Catalog
Concepts](https://docs.aws.amazon.com/servicecatalog/latest/adminguide/what-is_concepts.html).

### Usage

    servicecatalog(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="servicecatalog_:_config">config</code></td>
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

    svc <- servicecatalog(
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
<td style="text-align: left;"><a href="../servicecatalog_accept_portfolio_share/"> accept_portfolio_share </a></td>
<td style="text-align: left;">Accepts an offer to share the specified
portfolio</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../servicecatalog_associate_budget_with_resource/"> associate_budget_with_resource </a></td>
<td style="text-align: left;">Associates the specified budget with the
specified resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../servicecatalog_associate_principal_with_portfolio/"> associate_principal_with_portfolio </a></td>
<td style="text-align: left;">Associates the specified principal ARN
with the specified portfolio</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../servicecatalog_associate_product_with_portfolio/"> associate_product_with_portfolio </a></td>
<td style="text-align: left;">Associates the specified product with the
specified portfolio</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../servicecatalog_associate_service_action_with_provisioning_artifact/"> associate_service_action_with_provisioning_artifact </a></td>
<td style="text-align: left;">Associates a self-service action with a
provisioning artifact</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../servicecatalog_associate_tag_option_with_resource/"> associate_tag_option_with_resource </a></td>
<td style="text-align: left;">Associate the specified TagOption with the
specified portfolio or product</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../servicecatalog_batch_associate_service_action_with_provisioning_artifact/"> batch_associate_service_action_with_provisioning_artifact </a></td>
<td style="text-align: left;">Associates multiple self-service actions
with provisioning artifacts</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../servicecatalog_batch_disassociate_service_action_from_provisioning_artifact/"> batch_disassociate_service_action_from_provisioning_artifact </a></td>
<td style="text-align: left;">Disassociates a batch of self-service
actions from the specified provisioning artifact</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../servicecatalog_copy_product/"> copy_product </a></td>
<td style="text-align: left;">Copies the specified source product to the
specified target product or a new product</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../servicecatalog_create_constraint/"> create_constraint </a></td>
<td style="text-align: left;">Creates a constraint</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../servicecatalog_create_portfolio/"> create_portfolio </a></td>
<td style="text-align: left;">Creates a portfolio</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../servicecatalog_create_portfolio_share/"> create_portfolio_share </a></td>
<td style="text-align: left;">Shares the specified portfolio with the
specified account or organization node</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../servicecatalog_create_product/"> create_product </a></td>
<td style="text-align: left;">Creates a product</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../servicecatalog_create_provisioned_product_plan/"> create_provisioned_product_plan </a></td>
<td style="text-align: left;">Creates a plan</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../servicecatalog_create_provisioning_artifact/"> create_provisioning_artifact </a></td>
<td style="text-align: left;">Creates a provisioning artifact (also
known as a version) for the specified product</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../servicecatalog_create_service_action/"> create_service_action </a></td>
<td style="text-align: left;">Creates a self-service action</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../servicecatalog_create_tag_option/"> create_tag_option </a></td>
<td style="text-align: left;">Creates a TagOption</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../servicecatalog_delete_constraint/"> delete_constraint </a></td>
<td style="text-align: left;">Deletes the specified constraint</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../servicecatalog_delete_portfolio/"> delete_portfolio </a></td>
<td style="text-align: left;">Deletes the specified portfolio</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../servicecatalog_delete_portfolio_share/"> delete_portfolio_share </a></td>
<td style="text-align: left;">Stops sharing the specified portfolio with
the specified account or organization node</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../servicecatalog_delete_product/"> delete_product </a></td>
<td style="text-align: left;">Deletes the specified product</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../servicecatalog_delete_provisioned_product_plan/"> delete_provisioned_product_plan </a></td>
<td style="text-align: left;">Deletes the specified plan</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../servicecatalog_delete_provisioning_artifact/"> delete_provisioning_artifact </a></td>
<td style="text-align: left;">Deletes the specified provisioning
artifact (also known as a version) for the specified product</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../servicecatalog_delete_service_action/"> delete_service_action </a></td>
<td style="text-align: left;">Deletes a self-service action</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../servicecatalog_delete_tag_option/"> delete_tag_option </a></td>
<td style="text-align: left;">Deletes the specified TagOption</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../servicecatalog_describe_constraint/"> describe_constraint </a></td>
<td style="text-align: left;">Gets information about the specified
constraint</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../servicecatalog_describe_copy_product_status/"> describe_copy_product_status </a></td>
<td style="text-align: left;">Gets the status of the specified copy
product operation</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../servicecatalog_describe_portfolio/"> describe_portfolio </a></td>
<td style="text-align: left;">Gets information about the specified
portfolio</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../servicecatalog_describe_portfolio_shares/"> describe_portfolio_shares </a></td>
<td style="text-align: left;">Returns a summary of each of the portfolio
shares that were created for the specified portfolio</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../servicecatalog_describe_portfolio_share_status/"> describe_portfolio_share_status </a></td>
<td style="text-align: left;">Gets the status of the specified portfolio
share operation</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../servicecatalog_describe_product/"> describe_product </a></td>
<td style="text-align: left;">Gets information about the specified
product</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../servicecatalog_describe_product_as_admin/"> describe_product_as_admin </a></td>
<td style="text-align: left;">Gets information about the specified
product</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../servicecatalog_describe_product_view/"> describe_product_view </a></td>
<td style="text-align: left;">Gets information about the specified
product</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../servicecatalog_describe_provisioned_product/"> describe_provisioned_product </a></td>
<td style="text-align: left;">Gets information about the specified
provisioned product</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../servicecatalog_describe_provisioned_product_plan/"> describe_provisioned_product_plan </a></td>
<td style="text-align: left;">Gets information about the resource
changes for the specified plan</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../servicecatalog_describe_provisioning_artifact/"> describe_provisioning_artifact </a></td>
<td style="text-align: left;">Gets information about the specified
provisioning artifact (also known as a version) for the specified
product</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../servicecatalog_describe_provisioning_parameters/"> describe_provisioning_parameters </a></td>
<td style="text-align: left;">Gets information about the configuration
required to provision the specified product using the specified
provisioning artifact</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../servicecatalog_describe_record/"> describe_record </a></td>
<td style="text-align: left;">Gets information about the specified
request operation</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../servicecatalog_describe_service_action/"> describe_service_action </a></td>
<td style="text-align: left;">Describes a self-service action</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../servicecatalog_describe_service_action_execution_parameters/"> describe_service_action_execution_parameters </a></td>
<td style="text-align: left;">Finds the default parameters for a
specific self-service action on a specific provisioned product and
returns a map of the results to the user</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../servicecatalog_describe_tag_option/"> describe_tag_option </a></td>
<td style="text-align: left;">Gets information about the specified
TagOption</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../servicecatalog_disable_aws_organizations_access/"> disable_aws_organizations_access </a></td>
<td style="text-align: left;">Disable portfolio sharing through the
Organizations service</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../servicecatalog_disassociate_budget_from_resource/"> disassociate_budget_from_resource </a></td>
<td style="text-align: left;">Disassociates the specified budget from
the specified resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../servicecatalog_disassociate_principal_from_portfolio/"> disassociate_principal_from_portfolio </a></td>
<td style="text-align: left;">Disassociates a previously associated
principal ARN from a specified portfolio</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../servicecatalog_disassociate_product_from_portfolio/"> disassociate_product_from_portfolio </a></td>
<td style="text-align: left;">Disassociates the specified product from
the specified portfolio</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../servicecatalog_disassociate_service_action_from_provisioning_artifact/"> disassociate_service_action_from_provisioning_artifact </a></td>
<td style="text-align: left;">Disassociates the specified self-service
action association from the specified provisioning artifact</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../servicecatalog_disassociate_tag_option_from_resource/"> disassociate_tag_option_from_resource </a></td>
<td style="text-align: left;">Disassociates the specified TagOption from
the specified resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../servicecatalog_enable_aws_organizations_access/"> enable_aws_organizations_access </a></td>
<td style="text-align: left;">Enable portfolio sharing feature through
Organizations</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../servicecatalog_execute_provisioned_product_plan/"> execute_provisioned_product_plan </a></td>
<td style="text-align: left;">Provisions or modifies a product based on
the resource changes for the specified plan</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../servicecatalog_execute_provisioned_product_service_action/"> execute_provisioned_product_service_action </a></td>
<td style="text-align: left;">Executes a self-service action against a
provisioned product</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../servicecatalog_get_aws_organizations_access_status/"> get_aws_organizations_access_status </a></td>
<td style="text-align: left;">Get the Access Status for Organizations
portfolio share feature</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../servicecatalog_get_provisioned_product_outputs/"> get_provisioned_product_outputs </a></td>
<td style="text-align: left;">This API takes either a
ProvisonedProductId or a ProvisionedProductName, along with a list of
one or more output keys, and responds with the key/value pairs of those
outputs</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../servicecatalog_import_as_provisioned_product/"> import_as_provisioned_product </a></td>
<td style="text-align: left;">Requests the import of a resource as an
Service Catalog provisioned product that is associated to an Service
Catalog product and provisioning artifact</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../servicecatalog_list_accepted_portfolio_shares/"> list_accepted_portfolio_shares </a></td>
<td style="text-align: left;">Lists all imported portfolios for which
account-to-account shares were accepted by this account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../servicecatalog_list_budgets_for_resource/"> list_budgets_for_resource </a></td>
<td style="text-align: left;">Lists all the budgets associated to the
specified resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../servicecatalog_list_constraints_for_portfolio/"> list_constraints_for_portfolio </a></td>
<td style="text-align: left;">Lists the constraints for the specified
portfolio and product</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../servicecatalog_list_launch_paths/"> list_launch_paths </a></td>
<td style="text-align: left;">Lists the paths to the specified
product</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../servicecatalog_list_organization_portfolio_access/"> list_organization_portfolio_access </a></td>
<td style="text-align: left;">Lists the organization nodes that have
access to the specified portfolio</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../servicecatalog_list_portfolio_access/"> list_portfolio_access </a></td>
<td style="text-align: left;">Lists the account IDs that have access to
the specified portfolio</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../servicecatalog_list_portfolios/"> list_portfolios </a></td>
<td style="text-align: left;">Lists all portfolios in the catalog</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../servicecatalog_list_portfolios_for_product/"> list_portfolios_for_product </a></td>
<td style="text-align: left;">Lists all portfolios that the specified
product is associated with</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../servicecatalog_list_principals_for_portfolio/"> list_principals_for_portfolio </a></td>
<td style="text-align: left;">Lists all PrincipalARNs and corresponding
PrincipalTypes associated with the specified portfolio</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../servicecatalog_list_provisioned_product_plans/"> list_provisioned_product_plans </a></td>
<td style="text-align: left;">Lists the plans for the specified
provisioned product or all plans to which the user has access</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../servicecatalog_list_provisioning_artifacts/"> list_provisioning_artifacts </a></td>
<td style="text-align: left;">Lists all provisioning artifacts (also
known as versions) for the specified product</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../servicecatalog_list_provisioning_artifacts_for_service_action/"> list_provisioning_artifacts_for_service_action </a></td>
<td style="text-align: left;">Lists all provisioning artifacts (also
known as versions) for the specified self-service action</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../servicecatalog_list_record_history/"> list_record_history </a></td>
<td style="text-align: left;">Lists the specified requests or all
performed requests</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../servicecatalog_list_resources_for_tag_option/"> list_resources_for_tag_option </a></td>
<td style="text-align: left;">Lists the resources associated with the
specified TagOption</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../servicecatalog_list_service_actions/"> list_service_actions </a></td>
<td style="text-align: left;">Lists all self-service actions</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../servicecatalog_list_service_actions_for_provisioning_artifact/"> list_service_actions_for_provisioning_artifact </a></td>
<td style="text-align: left;">Returns a paginated list of self-service
actions associated with the specified Product ID and Provisioning
Artifact ID</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../servicecatalog_list_stack_instances_for_provisioned_product/"> list_stack_instances_for_provisioned_product </a></td>
<td style="text-align: left;">Returns summary information about stack
instances that are associated with the specified CFN_STACKSET type
provisioned product</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../servicecatalog_list_tag_options/"> list_tag_options </a></td>
<td style="text-align: left;">Lists the specified TagOptions or all
TagOptions</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../servicecatalog_notify_provision_product_engine_workflow_result/"> notify_provision_product_engine_workflow_result </a></td>
<td style="text-align: left;">Notifies the result of the provisioning
engine execution</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../servicecatalog_notify_terminate_provisioned_product_engine_workflow_result/"> notify_terminate_provisioned_product_engine_workflow_result </a></td>
<td style="text-align: left;">Notifies the result of the terminate
engine execution</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../servicecatalog_notify_update_provisioned_product_engine_workflow_result/"> notify_update_provisioned_product_engine_workflow_result </a></td>
<td style="text-align: left;">Notifies the result of the update engine
execution</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../servicecatalog_provision_product/"> provision_product </a></td>
<td style="text-align: left;">Provisions the specified product</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../servicecatalog_reject_portfolio_share/"> reject_portfolio_share </a></td>
<td style="text-align: left;">Rejects an offer to share the specified
portfolio</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../servicecatalog_scan_provisioned_products/"> scan_provisioned_products </a></td>
<td style="text-align: left;">Lists the provisioned products that are
available (not terminated)</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../servicecatalog_search_products/"> search_products </a></td>
<td style="text-align: left;">Gets information about the products to
which the caller has access</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../servicecatalog_search_products_as_admin/"> search_products_as_admin </a></td>
<td style="text-align: left;">Gets information about the products for
the specified portfolio or all products</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../servicecatalog_search_provisioned_products/"> search_provisioned_products </a></td>
<td style="text-align: left;">Gets information about the provisioned
products that meet the specified criteria</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../servicecatalog_terminate_provisioned_product/"> terminate_provisioned_product </a></td>
<td style="text-align: left;">Terminates the specified provisioned
product</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../servicecatalog_update_constraint/"> update_constraint </a></td>
<td style="text-align: left;">Updates the specified constraint</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../servicecatalog_update_portfolio/"> update_portfolio </a></td>
<td style="text-align: left;">Updates the specified portfolio</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../servicecatalog_update_portfolio_share/"> update_portfolio_share </a></td>
<td style="text-align: left;">Updates the specified portfolio share</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../servicecatalog_update_product/"> update_product </a></td>
<td style="text-align: left;">Updates the specified product</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../servicecatalog_update_provisioned_product/"> update_provisioned_product </a></td>
<td style="text-align: left;">Requests updates to the configuration of
the specified provisioned product</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../servicecatalog_update_provisioned_product_properties/"> update_provisioned_product_properties </a></td>
<td style="text-align: left;">Requests updates to the properties of the
specified provisioned product</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../servicecatalog_update_provisioning_artifact/"> update_provisioning_artifact </a></td>
<td style="text-align: left;">Updates the specified provisioning
artifact (also known as a version) for the specified product</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../servicecatalog_update_service_action/"> update_service_action </a></td>
<td style="text-align: left;">Updates a self-service action</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../servicecatalog_update_tag_option/"> update_tag_option </a></td>
<td style="text-align: left;">Updates the specified TagOption</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- servicecatalog()
    svc$accept_portfolio_share(
      Foo = 123
    )

    ## End(Not run)
