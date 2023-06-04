<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>accessanalyzer_validate_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Requests the validation of a policy and returns a list of findings

### Description

Requests the validation of a policy and returns a list of findings. The
findings help you identify issues and provide actionable recommendations
to resolve the issue and enable you to author functional policies that
meet security best practices.

### Usage

    accessanalyzer_validate_policy(locale, maxResults, nextToken,
      policyDocument, policyType, validatePolicyResourceType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="accessanalyzer_validate_policy_:_locale">locale</code></td>
<td><p>The locale to use for localizing the findings.</p></td>
</tr>
<tr class="even">
<td><code
id="accessanalyzer_validate_policy_:_maxResults">maxResults</code></td>
<td><p>The maximum number of results to return in the response.</p></td>
</tr>
<tr class="odd">
<td><code
id="accessanalyzer_validate_policy_:_nextToken">nextToken</code></td>
<td><p>A token used for pagination of results returned.</p></td>
</tr>
<tr class="even">
<td><code
id="accessanalyzer_validate_policy_:_policyDocument">policyDocument</code></td>
<td><p>[required] The JSON policy document to use as the content for the
policy.</p></td>
</tr>
<tr class="odd">
<td><code
id="accessanalyzer_validate_policy_:_policyType">policyType</code></td>
<td><p>[required] The type of policy to validate. Identity policies
grant permissions to IAM principals. Identity policies include managed
and inline policies for IAM roles, users, and groups. They also include
service-control policies (SCPs) that are attached to an Amazon Web
Services organization, organizational unit (OU), or an account.</p>
<p>Resource policies grant permissions on Amazon Web Services resources.
Resource policies include trust policies for IAM roles and bucket
policies for Amazon S3 buckets. You can provide a generic input such as
identity policy or resource policy or a specific input such as managed
policy or Amazon S3 bucket policy.</p></td>
</tr>
<tr class="even">
<td><code
id="accessanalyzer_validate_policy_:_validatePolicyResourceType">validatePolicyResourceType</code></td>
<td><p>The type of resource to attach to your resource policy. Specify a
value for the policy validation resource type only if the policy type is
<code>RESOURCE_POLICY</code>. For example, to validate a resource policy
to attach to an Amazon S3 bucket, you can choose <code
style="white-space: pre;">⁠AWS::S3::Bucket⁠</code> for the policy
validation resource type.</p>
<p>For resource types not supported as valid values, IAM Access Analyzer
runs policy checks that apply to all resource policies. For example, to
validate a resource policy to attach to a KMS key, do not specify a
value for the policy validation resource type and IAM Access Analyzer
will run policy checks that apply to all resource policies.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      findings = list(
        list(
          findingDetails = "string",
          findingType = "ERROR"|"SECURITY_WARNING"|"SUGGESTION"|"WARNING",
          issueCode = "string",
          learnMoreLink = "string",
          locations = list(
            list(
              path = list(
                list(
                  index = 123,
                  key = "string",
                  substring = list(
                    start = 123,
                    length = 123
                  ),
                  value = "string"
                )
              ),
              span = list(
                start = list(
                  line = 123,
                  column = 123,
                  offset = 123
                ),
                end = list(
                  line = 123,
                  column = 123,
                  offset = 123
                )
              )
            )
          )
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$validate_policy(
      locale = "DE"|"EN"|"ES"|"FR"|"IT"|"JA"|"KO"|"PT_BR"|"ZH_CN"|"ZH_TW",
      maxResults = 123,
      nextToken = "string",
      policyDocument = "string",
      policyType = "IDENTITY_POLICY"|"RESOURCE_POLICY"|"SERVICE_CONTROL_POLICY",
      validatePolicyResourceType = "AWS::S3::Bucket"|"AWS::S3::AccessPoint"|"AWS::S3::MultiRegionAccessPoint"|"AWS::S3ObjectLambda::AccessPoint"|"AWS::IAM::AssumeRolePolicyDocument"
    )
