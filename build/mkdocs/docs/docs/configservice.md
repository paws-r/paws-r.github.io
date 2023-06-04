<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>configservice</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## AWS Config

### Description

Config

Config provides a way to keep track of the configurations of all the
Amazon Web Services resources associated with your Amazon Web Services
account. You can use Config to get the current and historical
configurations of each Amazon Web Services resource and also to get
information about the relationship between the resources. An Amazon Web
Services resource can be an Amazon Compute Cloud (Amazon EC2) instance,
an Elastic Block Store (EBS) volume, an elastic network Interface (ENI),
or a security group. For a complete list of resources currently
supported by Config, see [Supported Amazon Web Services
resources](https://docs.aws.amazon.com/config/latest/developerguide/resource-config-reference.html#supported-resources).

You can access and manage Config through the Amazon Web Services
Management Console, the Amazon Web Services Command Line Interface
(Amazon Web Services CLI), the Config API, or the Amazon Web Services
SDKs for Config. This reference guide contains documentation for the
Config API and the Amazon Web Services CLI commands that you can use to
manage Config. The Config API uses the Signature Version 4 protocol for
signing requests. For more information about how to sign a request with
this protocol, see [Signature Version 4 Signing
Process](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html).
For detailed information about Config features and their associated
actions or commands, as well as how to work with Amazon Web Services
Management Console, see [What Is
Config](https://docs.aws.amazon.com/config/latest/developerguide/WhatIsConfig.html)
in the *Config Developer Guide*.

### Usage

    configservice(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="configservice_:_config">config</code></td>
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

    svc <- configservice(
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
<td style="text-align: left;"><a href="../configservice_batch_get_aggregate_resource_config/"> batch_get_aggregate_resource_config </a></td>
<td style="text-align: left;">Returns the current configuration items
for resources that are present in your Config aggregator</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../configservice_batch_get_resource_config/"> batch_get_resource_config </a></td>
<td style="text-align: left;">Returns the BaseConfigurationItem for one
or more requested resources</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../configservice_delete_aggregation_authorization/"> delete_aggregation_authorization </a></td>
<td style="text-align: left;">Deletes the authorization granted to the
specified configuration aggregator account in a specified region</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../configservice_delete_config_rule/"> delete_config_rule </a></td>
<td style="text-align: left;">Deletes the specified Config rule and all
of its evaluation results</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../configservice_delete_configuration_aggregator/"> delete_configuration_aggregator </a></td>
<td style="text-align: left;">Deletes the specified configuration
aggregator and the aggregated data associated with the aggregator</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../configservice_delete_configuration_recorder/"> delete_configuration_recorder </a></td>
<td style="text-align: left;">Deletes the configuration recorder</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../configservice_delete_conformance_pack/"> delete_conformance_pack </a></td>
<td style="text-align: left;">Deletes the specified conformance pack and
all the Config rules, remediation actions, and all evaluation results
within that conformance pack</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../configservice_delete_delivery_channel/"> delete_delivery_channel </a></td>
<td style="text-align: left;">Deletes the delivery channel</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../configservice_delete_evaluation_results/"> delete_evaluation_results </a></td>
<td style="text-align: left;">Deletes the evaluation results for the
specified Config rule</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../configservice_delete_organization_config_rule/"> delete_organization_config_rule </a></td>
<td style="text-align: left;">Deletes the specified organization Config
rule and all of its evaluation results from all member accounts in that
organization</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../configservice_delete_organization_conformance_pack/"> delete_organization_conformance_pack </a></td>
<td style="text-align: left;">Deletes the specified organization
conformance pack and all of the Config rules and remediation actions
from all member accounts in that organization</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../configservice_delete_pending_aggregation_request/"> delete_pending_aggregation_request </a></td>
<td style="text-align: left;">Deletes pending authorization requests for
a specified aggregator account in a specified region</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../configservice_delete_remediation_configuration/"> delete_remediation_configuration </a></td>
<td style="text-align: left;">Deletes the remediation configuration</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../configservice_delete_remediation_exceptions/"> delete_remediation_exceptions </a></td>
<td style="text-align: left;">Deletes one or more remediation exceptions
mentioned in the resource keys</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../configservice_delete_resource_config/"> delete_resource_config </a></td>
<td style="text-align: left;">Records the configuration state for a
custom resource that has been deleted</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../configservice_delete_retention_configuration/"> delete_retention_configuration </a></td>
<td style="text-align: left;">Deletes the retention configuration</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../configservice_delete_stored_query/"> delete_stored_query </a></td>
<td style="text-align: left;">Deletes the stored query for a single
Amazon Web Services account and a single Amazon Web Services Region</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../configservice_deliver_config_snapshot/"> deliver_config_snapshot </a></td>
<td style="text-align: left;">Schedules delivery of a configuration
snapshot to the Amazon S3 bucket in the specified delivery channel</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../configservice_describe_aggregate_compliance_by_config_rules/"> describe_aggregate_compliance_by_config_rules </a></td>
<td style="text-align: left;">Returns a list of compliant and
noncompliant rules with the number of resources for compliant and
noncompliant rules</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../configservice_describe_aggregate_compliance_by_conformance_packs/"> describe_aggregate_compliance_by_conformance_packs </a></td>
<td style="text-align: left;">Returns a list of the conformance packs
and their associated compliance status with the count of compliant and
noncompliant Config rules within each conformance pack</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../configservice_describe_aggregation_authorizations/"> describe_aggregation_authorizations </a></td>
<td style="text-align: left;">Returns a list of authorizations granted
to various aggregator accounts and regions</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../configservice_describe_compliance_by_config_rule/"> describe_compliance_by_config_rule </a></td>
<td style="text-align: left;">Indicates whether the specified Config
rules are compliant</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../configservice_describe_compliance_by_resource/"> describe_compliance_by_resource </a></td>
<td style="text-align: left;">Indicates whether the specified Amazon Web
Services resources are compliant</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../configservice_describe_config_rule_evaluation_status/"> describe_config_rule_evaluation_status </a></td>
<td style="text-align: left;">Returns status information for each of
your Config managed rules</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../configservice_describe_config_rules/"> describe_config_rules </a></td>
<td style="text-align: left;">Returns details about your Config
rules</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../configservice_describe_configuration_aggregators/"> describe_configuration_aggregators </a></td>
<td style="text-align: left;">Returns the details of one or more
configuration aggregators</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../configservice_describe_configuration_aggregator_sources_status/"> describe_configuration_aggregator_sources_status </a></td>
<td style="text-align: left;">Returns status information for sources
within an aggregator</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../configservice_describe_configuration_recorders/"> describe_configuration_recorders </a></td>
<td style="text-align: left;">Returns the details for the specified
configuration recorders</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../configservice_describe_configuration_recorder_status/"> describe_configuration_recorder_status </a></td>
<td style="text-align: left;">Returns the current status of the
specified configuration recorder as well as the status of the last
recording event for the recorder</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../configservice_describe_conformance_pack_compliance/"> describe_conformance_pack_compliance </a></td>
<td style="text-align: left;">Returns compliance details for each rule
in that conformance pack</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../configservice_describe_conformance_packs/"> describe_conformance_packs </a></td>
<td style="text-align: left;">Returns a list of one or more conformance
packs</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../configservice_describe_conformance_pack_status/"> describe_conformance_pack_status </a></td>
<td style="text-align: left;">Provides one or more conformance packs
deployment status</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../configservice_describe_delivery_channels/"> describe_delivery_channels </a></td>
<td style="text-align: left;">Returns details about the specified
delivery channel</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../configservice_describe_delivery_channel_status/"> describe_delivery_channel_status </a></td>
<td style="text-align: left;">Returns the current status of the
specified delivery channel</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../configservice_describe_organization_config_rules/"> describe_organization_config_rules </a></td>
<td style="text-align: left;">Returns a list of organization Config
rules</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../configservice_describe_organization_config_rule_statuses/"> describe_organization_config_rule_statuses </a></td>
<td style="text-align: left;">Provides organization Config rule
deployment status for an organization</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../configservice_describe_organization_conformance_packs/"> describe_organization_conformance_packs </a></td>
<td style="text-align: left;">Returns a list of organization conformance
packs</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../configservice_describe_organization_conformance_pack_statuses/"> describe_organization_conformance_pack_statuses </a></td>
<td style="text-align: left;">Provides organization conformance pack
deployment status for an organization</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../configservice_describe_pending_aggregation_requests/"> describe_pending_aggregation_requests </a></td>
<td style="text-align: left;">Returns a list of all pending aggregation
requests</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../configservice_describe_remediation_configurations/"> describe_remediation_configurations </a></td>
<td style="text-align: left;">Returns the details of one or more
remediation configurations</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../configservice_describe_remediation_exceptions/"> describe_remediation_exceptions </a></td>
<td style="text-align: left;">Returns the details of one or more
remediation exceptions</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../configservice_describe_remediation_execution_status/"> describe_remediation_execution_status </a></td>
<td style="text-align: left;">Provides a detailed view of a Remediation
Execution for a set of resources including state, timestamps for when
steps for the remediation execution occur, and any error messages for
steps that have failed</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../configservice_describe_retention_configurations/"> describe_retention_configurations </a></td>
<td style="text-align: left;">Returns the details of one or more
retention configurations</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../configservice_get_aggregate_compliance_details_by_config_rule/"> get_aggregate_compliance_details_by_config_rule </a></td>
<td style="text-align: left;">Returns the evaluation results for the
specified Config rule for a specific resource in a rule</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../configservice_get_aggregate_config_rule_compliance_summary/"> get_aggregate_config_rule_compliance_summary </a></td>
<td style="text-align: left;">Returns the number of compliant and
noncompliant rules for one or more accounts and regions in an
aggregator</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../configservice_get_aggregate_conformance_pack_compliance_summary/"> get_aggregate_conformance_pack_compliance_summary </a></td>
<td style="text-align: left;">Returns the count of compliant and
noncompliant conformance packs across all Amazon Web Services accounts
and Amazon Web Services Regions in an aggregator</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../configservice_get_aggregate_discovered_resource_counts/"> get_aggregate_discovered_resource_counts </a></td>
<td style="text-align: left;">Returns the resource counts across
accounts and regions that are present in your Config aggregator</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../configservice_get_aggregate_resource_config/"> get_aggregate_resource_config </a></td>
<td style="text-align: left;">Returns configuration item that is
aggregated for your specific resource in a specific source account and
region</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../configservice_get_compliance_details_by_config_rule/"> get_compliance_details_by_config_rule </a></td>
<td style="text-align: left;">Returns the evaluation results for the
specified Config rule</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../configservice_get_compliance_details_by_resource/"> get_compliance_details_by_resource </a></td>
<td style="text-align: left;">Returns the evaluation results for the
specified Amazon Web Services resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../configservice_get_compliance_summary_by_config_rule/"> get_compliance_summary_by_config_rule </a></td>
<td style="text-align: left;">Returns the number of Config rules that
are compliant and noncompliant, up to a maximum of 25 for each</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../configservice_get_compliance_summary_by_resource_type/"> get_compliance_summary_by_resource_type </a></td>
<td style="text-align: left;">Returns the number of resources that are
compliant and the number that are noncompliant</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../configservice_get_conformance_pack_compliance_details/"> get_conformance_pack_compliance_details </a></td>
<td style="text-align: left;">Returns compliance details of a
conformance pack for all Amazon Web Services resources that are
monitered by conformance pack</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../configservice_get_conformance_pack_compliance_summary/"> get_conformance_pack_compliance_summary </a></td>
<td style="text-align: left;">Returns compliance details for the
conformance pack based on the cumulative compliance results of all the
rules in that conformance pack</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../configservice_get_custom_rule_policy/"> get_custom_rule_policy </a></td>
<td style="text-align: left;">Returns the policy definition containing
the logic for your Config Custom Policy rule</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../configservice_get_discovered_resource_counts/"> get_discovered_resource_counts </a></td>
<td style="text-align: left;">Returns the resource types, the number of
each resource type, and the total number of resources that Config is
recording in this region for your Amazon Web Services account</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../configservice_get_organization_config_rule_detailed_status/"> get_organization_config_rule_detailed_status </a></td>
<td style="text-align: left;">Returns detailed status for each member
account within an organization for a given organization Config rule</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../configservice_get_organization_conformance_pack_detailed_status/"> get_organization_conformance_pack_detailed_status </a></td>
<td style="text-align: left;">Returns detailed status for each member
account within an organization for a given organization conformance
pack</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../configservice_get_organization_custom_rule_policy/"> get_organization_custom_rule_policy </a></td>
<td style="text-align: left;">Returns the policy definition containing
the logic for your organization Config Custom Policy rule</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../configservice_get_resource_config_history/"> get_resource_config_history </a></td>
<td style="text-align: left;">Returns a list of ConfigurationItems for
the specified resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../configservice_get_resource_evaluation_summary/"> get_resource_evaluation_summary </a></td>
<td style="text-align: left;">Returns a summary of resource evaluation
for the specified resource evaluation ID from the proactive rules that
were run</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../configservice_get_stored_query/"> get_stored_query </a></td>
<td style="text-align: left;">Returns the details of a specific stored
query</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../configservice_list_aggregate_discovered_resources/"> list_aggregate_discovered_resources </a></td>
<td style="text-align: left;">Accepts a resource type and returns a list
of resource identifiers that are aggregated for a specific resource type
across accounts and regions</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../configservice_list_conformance_pack_compliance_scores/"> list_conformance_pack_compliance_scores </a></td>
<td style="text-align: left;">Returns a list of conformance pack
compliance scores</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../configservice_list_discovered_resources/"> list_discovered_resources </a></td>
<td style="text-align: left;">Accepts a resource type and returns a list
of resource identifiers for the resources of that type</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../configservice_list_resource_evaluations/"> list_resource_evaluations </a></td>
<td style="text-align: left;">Returns a list of proactive resource
evaluations</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../configservice_list_stored_queries/"> list_stored_queries </a></td>
<td style="text-align: left;">Lists the stored queries for a single
Amazon Web Services account and a single Amazon Web Services Region</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../configservice_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">List the tags for Config resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../configservice_put_aggregation_authorization/"> put_aggregation_authorization </a></td>
<td style="text-align: left;">Authorizes the aggregator account and
region to collect data from the source account and region</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../configservice_put_config_rule/"> put_config_rule </a></td>
<td style="text-align: left;">Adds or updates an Config rule to evaluate
if your Amazon Web Services resources comply with your desired
configurations</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../configservice_put_configuration_aggregator/"> put_configuration_aggregator </a></td>
<td style="text-align: left;">Creates and updates the configuration
aggregator with the selected source accounts and regions</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../configservice_put_configuration_recorder/"> put_configuration_recorder </a></td>
<td style="text-align: left;">Creates a new configuration recorder to
record the selected resource configurations</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../configservice_put_conformance_pack/"> put_conformance_pack </a></td>
<td style="text-align: left;">Creates or updates a conformance pack</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../configservice_put_delivery_channel/"> put_delivery_channel </a></td>
<td style="text-align: left;">Creates a delivery channel object to
deliver configuration information to an Amazon S3 bucket and Amazon SNS
topic</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../configservice_put_evaluations/"> put_evaluations </a></td>
<td style="text-align: left;">Used by an Lambda function to deliver
evaluation results to Config</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../configservice_put_external_evaluation/"> put_external_evaluation </a></td>
<td style="text-align: left;">Add or updates the evaluations for process
checks</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../configservice_put_organization_config_rule/"> put_organization_config_rule </a></td>
<td style="text-align: left;">Adds or updates an Config rule for your
entire organization to evaluate if your Amazon Web Services resources
comply with your desired configurations</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../configservice_put_organization_conformance_pack/"> put_organization_conformance_pack </a></td>
<td style="text-align: left;">Deploys conformance packs across member
accounts in an Amazon Web Services Organization</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../configservice_put_remediation_configurations/"> put_remediation_configurations </a></td>
<td style="text-align: left;">Adds or updates the remediation
configuration with a specific Config rule with the selected target or
action</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../configservice_put_remediation_exceptions/"> put_remediation_exceptions </a></td>
<td style="text-align: left;">A remediation exception is when a
specified resource is no longer considered for auto-remediation</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../configservice_put_resource_config/"> put_resource_config </a></td>
<td style="text-align: left;">Records the configuration state for the
resource provided in the request</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../configservice_put_retention_configuration/"> put_retention_configuration </a></td>
<td style="text-align: left;">Creates and updates the retention
configuration with details about retention period (number of days) that
Config stores your historical information</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../configservice_put_stored_query/"> put_stored_query </a></td>
<td style="text-align: left;">Saves a new query or updates an existing
saved query</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../configservice_select_aggregate_resource_config/"> select_aggregate_resource_config </a></td>
<td style="text-align: left;">Accepts a structured query language (SQL)
SELECT command and an aggregator to query configuration state of Amazon
Web Services resources across multiple accounts and regions, performs
the corresponding search, and returns resource configurations matching
the properties</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../configservice_select_resource_config/"> select_resource_config </a></td>
<td style="text-align: left;">Accepts a structured query language (SQL)
SELECT command, performs the corresponding search, and returns resource
configurations matching the properties</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../configservice_start_config_rules_evaluation/"> start_config_rules_evaluation </a></td>
<td style="text-align: left;">Runs an on-demand evaluation for the
specified Config rules against the last known configuration state of the
resources</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../configservice_start_configuration_recorder/"> start_configuration_recorder </a></td>
<td style="text-align: left;">Starts recording configurations of the
Amazon Web Services resources you have selected to record in your Amazon
Web Services account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../configservice_start_remediation_execution/"> start_remediation_execution </a></td>
<td style="text-align: left;">Runs an on-demand remediation for the
specified Config rules against the last known remediation
configuration</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../configservice_start_resource_evaluation/"> start_resource_evaluation </a></td>
<td style="text-align: left;">Runs an on-demand evaluation for the
specified resource to determine whether the resource details will comply
with configured Config rules</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../configservice_stop_configuration_recorder/"> stop_configuration_recorder </a></td>
<td style="text-align: left;">Stops recording configurations of the
Amazon Web Services resources you have selected to record in your Amazon
Web Services account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../configservice_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Associates the specified tags to a
resource with the specified resourceArn</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../configservice_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Deletes specified tags from a
resource</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- configservice()
    svc$batch_get_aggregate_resource_config(
      Foo = 123
    )

    ## End(Not run)
