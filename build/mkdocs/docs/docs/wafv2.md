<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>wafv2</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## AWS WAFV2

### Description

WAF

This is the latest version of the **WAF** API, released in November,
2019. The names of the entities that you use to access this API, like
endpoints and namespaces, all have the versioning information added,
like "V2" or "v2", to distinguish from the prior version. We recommend
migrating your resources to this version, because it has a number of
significant improvements.

If you used WAF prior to this release, you can't use this WAFV2 API to
access any WAF resources that you created before. You can access your
old rules, web ACLs, and other WAF resources only through the WAF
Classic APIs. The WAF Classic APIs have retained the prior names,
endpoints, and namespaces.

For information, including how to migrate your WAF resources to this
version, see the [WAF Developer
Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

WAF is a web application firewall that lets you monitor the HTTP and
HTTPS requests that are forwarded to an Amazon CloudFront distribution,
Amazon API Gateway REST API, Application Load Balancer, AppSync GraphQL
API, Amazon Cognito user pool, App Runner service, or Amazon Web
Services Verified Access instance. WAF also lets you control access to
your content, to protect the Amazon Web Services resource that WAF is
monitoring. Based on conditions that you specify, such as the IP
addresses that requests originate from or the values of query strings,
the protected resource responds to requests with either the requested
content, an HTTP 403 status code (Forbidden), or with a custom response.

This API guide is for developers who need detailed information about WAF
API actions, data types, and errors. For detailed information about WAF
features and guidance for configuring and using WAF, see the [WAF
Developer
Guide](https://docs.aws.amazon.com/waf/latest/developerguide/what-is-aws-waf.html).

You can make calls using the endpoints listed in [WAF endpoints and
quotas](https://docs.aws.amazon.com/general/latest/gr/waf.html).

-   For regional applications, you can use any of the endpoints in the
    list. A regional application can be an Application Load Balancer
    (ALB), an Amazon API Gateway REST API, an AppSync GraphQL API, an
    Amazon Cognito user pool, an App Runner service, or an Amazon Web
    Services Verified Access instance.

-   For Amazon CloudFront applications, you must use the API endpoint
    listed for US East (N. Virginia): us-east-1.

Alternatively, you can use one of the Amazon Web Services SDKs to access
an API that's tailored to the programming language or platform that
you're using. For more information, see [Amazon Web Services
SDKs](https://aws.amazon.com/developer/tools/#SDKs).

We currently provide two versions of the WAF API: this API and the prior
versions, the classic WAF APIs. This new API provides the same
functionality as the older versions, with the following major
improvements:

-   You use one API for both global and regional applications. Where you
    need to distinguish the scope, you specify a `Scope` parameter and
    set it to `CLOUDFRONT` or `REGIONAL`.

-   You can define a web ACL or rule group with a single call, and
    update it with a single call. You define all rule specifications in
    JSON format, and pass them to your rule group or web ACL calls.

-   The limits WAF places on the use of rules more closely reflects the
    cost of running each type of rule. Rule groups include capacity
    settings, so you know the maximum cost of a rule group when you use
    it.

### Usage

    wafv2(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="wafv2_:_config">config</code></td>
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

    svc <- wafv2(
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
<td style="text-align: left;"><a href="../wafv2_associate_web_acl/"> associate_web_acl </a></td>
<td style="text-align: left;">Associates a web ACL with a regional
application resource, to protect the resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../wafv2_check_capacity/"> check_capacity </a></td>
<td style="text-align: left;">Returns the web ACL capacity unit (WCU)
requirements for a specified scope and set of rules</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../wafv2_create_api_key/"> create_api_key </a></td>
<td style="text-align: left;">Creates an API key that contains a set of
token domains</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../wafv2_create_ip_set/"> create_ip_set </a></td>
<td style="text-align: left;">Creates an IPSet, which you use to
identify web requests that originate from specific IP addresses or
ranges of IP addresses</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../wafv2_create_regex_pattern_set/"> create_regex_pattern_set </a></td>
<td style="text-align: left;">Creates a RegexPatternSet, which you
reference in a RegexPatternSetReferenceStatement, to have WAF inspect a
web request component for the specified patterns</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../wafv2_create_rule_group/"> create_rule_group </a></td>
<td style="text-align: left;">Creates a RuleGroup per the specifications
provided</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../wafv2_create_web_acl/"> create_web_acl </a></td>
<td style="text-align: left;">Creates a WebACL per the specifications
provided</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../wafv2_delete_firewall_manager_rule_groups/"> delete_firewall_manager_rule_groups </a></td>
<td style="text-align: left;">Deletes all rule groups that are managed
by Firewall Manager for the specified web ACL</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../wafv2_delete_ip_set/"> delete_ip_set </a></td>
<td style="text-align: left;">Deletes the specified IPSet</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../wafv2_delete_logging_configuration/"> delete_logging_configuration </a></td>
<td style="text-align: left;">Deletes the LoggingConfiguration from the
specified web ACL</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../wafv2_delete_permission_policy/"> delete_permission_policy </a></td>
<td style="text-align: left;">Permanently deletes an IAM policy from the
specified rule group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../wafv2_delete_regex_pattern_set/"> delete_regex_pattern_set </a></td>
<td style="text-align: left;">Deletes the specified RegexPatternSet</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../wafv2_delete_rule_group/"> delete_rule_group </a></td>
<td style="text-align: left;">Deletes the specified RuleGroup</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../wafv2_delete_web_acl/"> delete_web_acl </a></td>
<td style="text-align: left;">Deletes the specified WebACL</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../wafv2_describe_managed_rule_group/"> describe_managed_rule_group </a></td>
<td style="text-align: left;">Provides high-level information for a
managed rule group, including descriptions of the rules</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../wafv2_disassociate_web_acl/"> disassociate_web_acl </a></td>
<td style="text-align: left;">Disassociates the specified regional
application resource from any existing web ACL association</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../wafv2_generate_mobile_sdk_release_url/"> generate_mobile_sdk_release_url </a></td>
<td style="text-align: left;">Generates a presigned download URL for the
specified release of the mobile SDK</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../wafv2_get_decrypted_api_key/"> get_decrypted_api_key </a></td>
<td style="text-align: left;">Returns your API key in decrypted
form</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../wafv2_get_ip_set/"> get_ip_set </a></td>
<td style="text-align: left;">Retrieves the specified IPSet</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../wafv2_get_logging_configuration/"> get_logging_configuration </a></td>
<td style="text-align: left;">Returns the LoggingConfiguration for the
specified web ACL</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../wafv2_get_managed_rule_set/"> get_managed_rule_set </a></td>
<td style="text-align: left;">Retrieves the specified managed rule
set</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../wafv2_get_mobile_sdk_release/"> get_mobile_sdk_release </a></td>
<td style="text-align: left;">Retrieves information for the specified
mobile SDK release, including release notes and tags</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../wafv2_get_permission_policy/"> get_permission_policy </a></td>
<td style="text-align: left;">Returns the IAM policy that is attached to
the specified rule group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../wafv2_get_rate_based_statement_managed_keys/"> get_rate_based_statement_managed_keys </a></td>
<td style="text-align: left;">Retrieves the IP addresses that are
currently blocked by a rate-based rule instance</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../wafv2_get_regex_pattern_set/"> get_regex_pattern_set </a></td>
<td style="text-align: left;">Retrieves the specified
RegexPatternSet</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../wafv2_get_rule_group/"> get_rule_group </a></td>
<td style="text-align: left;">Retrieves the specified RuleGroup</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../wafv2_get_sampled_requests/"> get_sampled_requests </a></td>
<td style="text-align: left;">Gets detailed information about a
specified number of requests--a sample--that WAF randomly selects from
among the first 5,000 requests that your Amazon Web Services resource
received during a time range that you choose</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../wafv2_get_web_acl/"> get_web_acl </a></td>
<td style="text-align: left;">Retrieves the specified WebACL</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../wafv2_get_web_acl_for_resource/"> get_web_acl_for_resource </a></td>
<td style="text-align: left;">Retrieves the WebACL for the specified
resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../wafv2_list_api_keys/"> list_api_keys </a></td>
<td style="text-align: left;">Retrieves a list of the API keys that
you've defined for the specified scope</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../wafv2_list_available_managed_rule_groups/"> list_available_managed_rule_groups </a></td>
<td style="text-align: left;">Retrieves an array of managed rule groups
that are available for you to use</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../wafv2_list_available_managed_rule_group_versions/"> list_available_managed_rule_group_versions </a></td>
<td style="text-align: left;">Returns a list of the available versions
for the specified managed rule group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../wafv2_list_ip_sets/"> list_ip_sets </a></td>
<td style="text-align: left;">Retrieves an array of IPSetSummary objects
for the IP sets that you manage</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../wafv2_list_logging_configurations/"> list_logging_configurations </a></td>
<td style="text-align: left;">Retrieves an array of your
LoggingConfiguration objects</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../wafv2_list_managed_rule_sets/"> list_managed_rule_sets </a></td>
<td style="text-align: left;">Retrieves the managed rule sets that you
own</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../wafv2_list_mobile_sdk_releases/"> list_mobile_sdk_releases </a></td>
<td style="text-align: left;">Retrieves a list of the available releases
for the mobile SDK and the specified device platform</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../wafv2_list_regex_pattern_sets/"> list_regex_pattern_sets </a></td>
<td style="text-align: left;">Retrieves an array of
RegexPatternSetSummary objects for the regex pattern sets that you
manage</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../wafv2_list_resources_for_web_acl/"> list_resources_for_web_acl </a></td>
<td style="text-align: left;">Retrieves an array of the Amazon Resource
Names (ARNs) for the regional resources that are associated with the
specified web ACL</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../wafv2_list_rule_groups/"> list_rule_groups </a></td>
<td style="text-align: left;">Retrieves an array of RuleGroupSummary
objects for the rule groups that you manage</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../wafv2_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Retrieves the TagInfoForResource for the
specified resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../wafv2_list_web_ac_ls/"> list_web_ac_ls </a></td>
<td style="text-align: left;">Retrieves an array of WebACLSummary
objects for the web ACLs that you manage</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../wafv2_put_logging_configuration/"> put_logging_configuration </a></td>
<td style="text-align: left;">Enables the specified
LoggingConfiguration, to start logging from a web ACL, according to the
configuration provided</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../wafv2_put_managed_rule_set_versions/"> put_managed_rule_set_versions </a></td>
<td style="text-align: left;">Defines the versions of your managed rule
set that you are offering to the customers</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../wafv2_put_permission_policy/"> put_permission_policy </a></td>
<td style="text-align: left;">Attaches an IAM policy to the specified
resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../wafv2_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Associates tags with the specified Amazon
Web Services resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../wafv2_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Disassociates tags from an Amazon Web
Services resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../wafv2_update_ip_set/"> update_ip_set </a></td>
<td style="text-align: left;">Updates the specified IPSet</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../wafv2_update_managed_rule_set_version_expiry_date/"> update_managed_rule_set_version_expiry_date </a></td>
<td style="text-align: left;">Updates the expiration information for
your managed rule set</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../wafv2_update_regex_pattern_set/"> update_regex_pattern_set </a></td>
<td style="text-align: left;">Updates the specified RegexPatternSet</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../wafv2_update_rule_group/"> update_rule_group </a></td>
<td style="text-align: left;">Updates the specified RuleGroup</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../wafv2_update_web_acl/"> update_web_acl </a></td>
<td style="text-align: left;">Updates the specified WebACL</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- wafv2()
    svc$associate_web_acl(
      Foo = 123
    )

    ## End(Not run)
