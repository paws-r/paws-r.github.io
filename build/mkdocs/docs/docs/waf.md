<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>waf</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## AWS WAF

### Description

This is **AWS WAF Classic** documentation. For more information, see
[AWS WAF
Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
in the developer guide.

**For the latest version of AWS WAF**, use the AWS WAFV2 API and see the
[AWS WAF Developer
Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
With the latest version, AWS WAF has a single set of endpoints for
regional and global use.

This is the *AWS WAF Classic API Reference* for using AWS WAF Classic
with Amazon CloudFront. The AWS WAF Classic actions and data types
listed in the reference are available for protecting Amazon CloudFront
distributions. You can use these actions and data types via the endpoint
*waf.amazonaws.com*. This guide is for developers who need detailed
information about the AWS WAF Classic API actions, data types, and
errors. For detailed information about AWS WAF Classic features and an
overview of how to use the AWS WAF Classic API, see the [AWS WAF
Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
in the developer guide.

### Usage

    waf(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="waf_:_config">config</code></td>
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

    svc <- waf(
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
<td style="text-align: left;"><a href="../waf_create_byte_match_set/"> create_byte_match_set </a></td>
<td style="text-align: left;">This is AWS WAF Classic documentation</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../waf_create_geo_match_set/"> create_geo_match_set </a></td>
<td style="text-align: left;">This is AWS WAF Classic documentation</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../waf_create_ip_set/"> create_ip_set </a></td>
<td style="text-align: left;">This is AWS WAF Classic documentation</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../waf_create_rate_based_rule/"> create_rate_based_rule </a></td>
<td style="text-align: left;">This is AWS WAF Classic documentation</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../waf_create_regex_match_set/"> create_regex_match_set </a></td>
<td style="text-align: left;">This is AWS WAF Classic documentation</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../waf_create_regex_pattern_set/"> create_regex_pattern_set </a></td>
<td style="text-align: left;">This is AWS WAF Classic documentation</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../waf_create_rule/"> create_rule </a></td>
<td style="text-align: left;">This is AWS WAF Classic documentation</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../waf_create_rule_group/"> create_rule_group </a></td>
<td style="text-align: left;">This is AWS WAF Classic documentation</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../waf_create_size_constraint_set/"> create_size_constraint_set </a></td>
<td style="text-align: left;">This is AWS WAF Classic documentation</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../waf_create_sql_injection_match_set/"> create_sql_injection_match_set </a></td>
<td style="text-align: left;">This is AWS WAF Classic documentation</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../waf_create_web_acl/"> create_web_acl </a></td>
<td style="text-align: left;">This is AWS WAF Classic documentation</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../waf_create_web_acl_migration_stack/"> create_web_acl_migration_stack </a></td>
<td style="text-align: left;">Creates an AWS CloudFormation WAFV2
template for the specified web ACL in the specified Amazon S3
bucket</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../waf_create_xss_match_set/"> create_xss_match_set </a></td>
<td style="text-align: left;">This is AWS WAF Classic documentation</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../waf_delete_byte_match_set/"> delete_byte_match_set </a></td>
<td style="text-align: left;">This is AWS WAF Classic documentation</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../waf_delete_geo_match_set/"> delete_geo_match_set </a></td>
<td style="text-align: left;">This is AWS WAF Classic documentation</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../waf_delete_ip_set/"> delete_ip_set </a></td>
<td style="text-align: left;">This is AWS WAF Classic documentation</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../waf_delete_logging_configuration/"> delete_logging_configuration </a></td>
<td style="text-align: left;">This is AWS WAF Classic documentation</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../waf_delete_permission_policy/"> delete_permission_policy </a></td>
<td style="text-align: left;">This is AWS WAF Classic documentation</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../waf_delete_rate_based_rule/"> delete_rate_based_rule </a></td>
<td style="text-align: left;">This is AWS WAF Classic documentation</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../waf_delete_regex_match_set/"> delete_regex_match_set </a></td>
<td style="text-align: left;">This is AWS WAF Classic documentation</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../waf_delete_regex_pattern_set/"> delete_regex_pattern_set </a></td>
<td style="text-align: left;">This is AWS WAF Classic documentation</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../waf_delete_rule/"> delete_rule </a></td>
<td style="text-align: left;">This is AWS WAF Classic documentation</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../waf_delete_rule_group/"> delete_rule_group </a></td>
<td style="text-align: left;">This is AWS WAF Classic documentation</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../waf_delete_size_constraint_set/"> delete_size_constraint_set </a></td>
<td style="text-align: left;">This is AWS WAF Classic documentation</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../waf_delete_sql_injection_match_set/"> delete_sql_injection_match_set </a></td>
<td style="text-align: left;">This is AWS WAF Classic documentation</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../waf_delete_web_acl/"> delete_web_acl </a></td>
<td style="text-align: left;">This is AWS WAF Classic documentation</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../waf_delete_xss_match_set/"> delete_xss_match_set </a></td>
<td style="text-align: left;">This is AWS WAF Classic documentation</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../waf_get_byte_match_set/"> get_byte_match_set </a></td>
<td style="text-align: left;">This is AWS WAF Classic documentation</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../waf_get_change_token/"> get_change_token </a></td>
<td style="text-align: left;">This is AWS WAF Classic documentation</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../waf_get_change_token_status/"> get_change_token_status </a></td>
<td style="text-align: left;">This is AWS WAF Classic documentation</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../waf_get_geo_match_set/"> get_geo_match_set </a></td>
<td style="text-align: left;">This is AWS WAF Classic documentation</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../waf_get_ip_set/"> get_ip_set </a></td>
<td style="text-align: left;">This is AWS WAF Classic documentation</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../waf_get_logging_configuration/"> get_logging_configuration </a></td>
<td style="text-align: left;">This is AWS WAF Classic documentation</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../waf_get_permission_policy/"> get_permission_policy </a></td>
<td style="text-align: left;">This is AWS WAF Classic documentation</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../waf_get_rate_based_rule/"> get_rate_based_rule </a></td>
<td style="text-align: left;">This is AWS WAF Classic documentation</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../waf_get_rate_based_rule_managed_keys/"> get_rate_based_rule_managed_keys </a></td>
<td style="text-align: left;">This is AWS WAF Classic documentation</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../waf_get_regex_match_set/"> get_regex_match_set </a></td>
<td style="text-align: left;">This is AWS WAF Classic documentation</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../waf_get_regex_pattern_set/"> get_regex_pattern_set </a></td>
<td style="text-align: left;">This is AWS WAF Classic documentation</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../waf_get_rule/"> get_rule </a></td>
<td style="text-align: left;">This is AWS WAF Classic documentation</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../waf_get_rule_group/"> get_rule_group </a></td>
<td style="text-align: left;">This is AWS WAF Classic documentation</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../waf_get_sampled_requests/"> get_sampled_requests </a></td>
<td style="text-align: left;">This is AWS WAF Classic documentation</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../waf_get_size_constraint_set/"> get_size_constraint_set </a></td>
<td style="text-align: left;">This is AWS WAF Classic documentation</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../waf_get_sql_injection_match_set/"> get_sql_injection_match_set </a></td>
<td style="text-align: left;">This is AWS WAF Classic documentation</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../waf_get_web_acl/"> get_web_acl </a></td>
<td style="text-align: left;">This is AWS WAF Classic documentation</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../waf_get_xss_match_set/"> get_xss_match_set </a></td>
<td style="text-align: left;">This is AWS WAF Classic documentation</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../waf_list_activated_rules_in_rule_group/"> list_activated_rules_in_rule_group </a></td>
<td style="text-align: left;">This is AWS WAF Classic documentation</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../waf_list_byte_match_sets/"> list_byte_match_sets </a></td>
<td style="text-align: left;">This is AWS WAF Classic documentation</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../waf_list_geo_match_sets/"> list_geo_match_sets </a></td>
<td style="text-align: left;">This is AWS WAF Classic documentation</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../waf_list_ip_sets/"> list_ip_sets </a></td>
<td style="text-align: left;">This is AWS WAF Classic documentation</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../waf_list_logging_configurations/"> list_logging_configurations </a></td>
<td style="text-align: left;">This is AWS WAF Classic documentation</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../waf_list_rate_based_rules/"> list_rate_based_rules </a></td>
<td style="text-align: left;">This is AWS WAF Classic documentation</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../waf_list_regex_match_sets/"> list_regex_match_sets </a></td>
<td style="text-align: left;">This is AWS WAF Classic documentation</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../waf_list_regex_pattern_sets/"> list_regex_pattern_sets </a></td>
<td style="text-align: left;">This is AWS WAF Classic documentation</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../waf_list_rule_groups/"> list_rule_groups </a></td>
<td style="text-align: left;">This is AWS WAF Classic documentation</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../waf_list_rules/"> list_rules </a></td>
<td style="text-align: left;">This is AWS WAF Classic documentation</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../waf_list_size_constraint_sets/"> list_size_constraint_sets </a></td>
<td style="text-align: left;">This is AWS WAF Classic documentation</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../waf_list_sql_injection_match_sets/"> list_sql_injection_match_sets </a></td>
<td style="text-align: left;">This is AWS WAF Classic documentation</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../waf_list_subscribed_rule_groups/"> list_subscribed_rule_groups </a></td>
<td style="text-align: left;">This is AWS WAF Classic documentation</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../waf_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">This is AWS WAF Classic documentation</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../waf_list_web_ac_ls/"> list_web_ac_ls </a></td>
<td style="text-align: left;">This is AWS WAF Classic documentation</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../waf_list_xss_match_sets/"> list_xss_match_sets </a></td>
<td style="text-align: left;">This is AWS WAF Classic documentation</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../waf_put_logging_configuration/"> put_logging_configuration </a></td>
<td style="text-align: left;">This is AWS WAF Classic documentation</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../waf_put_permission_policy/"> put_permission_policy </a></td>
<td style="text-align: left;">This is AWS WAF Classic documentation</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../waf_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">This is AWS WAF Classic documentation</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../waf_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">This is AWS WAF Classic documentation</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../waf_update_byte_match_set/"> update_byte_match_set </a></td>
<td style="text-align: left;">This is AWS WAF Classic documentation</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../waf_update_geo_match_set/"> update_geo_match_set </a></td>
<td style="text-align: left;">This is AWS WAF Classic documentation</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../waf_update_ip_set/"> update_ip_set </a></td>
<td style="text-align: left;">This is AWS WAF Classic documentation</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../waf_update_rate_based_rule/"> update_rate_based_rule </a></td>
<td style="text-align: left;">This is AWS WAF Classic documentation</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../waf_update_regex_match_set/"> update_regex_match_set </a></td>
<td style="text-align: left;">This is AWS WAF Classic documentation</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../waf_update_regex_pattern_set/"> update_regex_pattern_set </a></td>
<td style="text-align: left;">This is AWS WAF Classic documentation</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../waf_update_rule/"> update_rule </a></td>
<td style="text-align: left;">This is AWS WAF Classic documentation</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../waf_update_rule_group/"> update_rule_group </a></td>
<td style="text-align: left;">This is AWS WAF Classic documentation</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../waf_update_size_constraint_set/"> update_size_constraint_set </a></td>
<td style="text-align: left;">This is AWS WAF Classic documentation</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../waf_update_sql_injection_match_set/"> update_sql_injection_match_set </a></td>
<td style="text-align: left;">This is AWS WAF Classic documentation</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../waf_update_web_acl/"> update_web_acl </a></td>
<td style="text-align: left;">This is AWS WAF Classic documentation</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../waf_update_xss_match_set/"> update_xss_match_set </a></td>
<td style="text-align: left;">This is AWS WAF Classic documentation</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- waf()
    # The following example creates an IP match set named MyIPSetFriendlyName.
    svc$create_ip_set(
      ChangeToken = "abcd12f2-46da-4fdb-b8d5-fbd4c466928f",
      Name = "MyIPSetFriendlyName"
    )

    ## End(Not run)
