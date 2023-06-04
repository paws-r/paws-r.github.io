<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>wafv2_update_web_acl</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the specified WebACL

### Description

Updates the specified WebACL. While updating a web ACL, WAF provides
continuous coverage to the resources that you have associated with the
web ACL.

This operation completely replaces the mutable specifications that you
already have for the web ACL with the ones that you provide to this
call.

To modify a web ACL, do the following:

1.  Retrieve it by calling `get_web_acl`

2.  Update its settings as needed

3.  Provide the complete web ACL specification to this call

When you make changes to web ACLs or web ACL components, like rules and
rule groups, WAF propagates the changes everywhere that the web ACL and
its components are stored and used. Your changes are applied within
seconds, but there might be a brief period of inconsistency when the
changes have arrived in some places and not in others. So, for example,
if you change a rule action setting, the action might be the old action
in one area and the new action in another area. Or if you add an IP
address to an IP set used in a blocking rule, the new address might
briefly be blocked in one area while still allowed in another. This
temporary inconsistency can occur when you first associate a web ACL
with an Amazon Web Services resource and when you change a web ACL that
is already associated with a resource. Generally, any inconsistencies of
this type last only a few seconds.

A web ACL defines a collection of rules to use to inspect and control
web requests. Each rule has an action defined (allow, block, or count)
for requests that match the statement of the rule. In the web ACL, you
assign a default action to take (allow, block) for any request that does
not match any of the rules. The rules in a web ACL can be a combination
of the types Rule, RuleGroup, and managed rule group. You can associate
a web ACL with one or more Amazon Web Services resources to protect. The
resources can be an Amazon CloudFront distribution, an Amazon API
Gateway REST API, an Application Load Balancer, an AppSync GraphQL API,
an Amazon Cognito user pool, an App Runner service, or an Amazon Web
Services Verified Access instance.

### Usage

    wafv2_update_web_acl(Name, Scope, Id, DefaultAction, Description, Rules,
      VisibilityConfig, LockToken, CustomResponseBodies, CaptchaConfig,
      ChallengeConfig, TokenDomains, AssociationConfig)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="wafv2_update_web_acl_:_Name">Name</code></td>
<td><p>[required] The name of the web ACL. You cannot change the name of
a web ACL after you create it.</p></td>
</tr>
<tr class="even">
<td><code id="wafv2_update_web_acl_:_Scope">Scope</code></td>
<td><p>[required] Specifies whether this is for an Amazon CloudFront
distribution or for a regional application. A regional application can
be an Application Load Balancer (ALB), an Amazon API Gateway REST API,
an AppSync GraphQL API, an Amazon Cognito user pool, an App Runner
service, or an Amazon Web Services Verified Access instance.</p>
<p>To work with CloudFront, you must also specify the Region US East (N.
Virginia) as follows:</p>
<ul>
<li><p>CLI - Specify the Region when you use the CloudFront scope:
<code>--scope=CLOUDFRONT --region=us-east-1</code>.</p></li>
<li><p>API and SDKs - For all calls, use the Region endpoint
us-east-1.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code id="wafv2_update_web_acl_:_Id">Id</code></td>
<td><p>[required] The unique identifier for the web ACL. This ID is
returned in the responses to create and list commands. You provide it to
operations like update and delete.</p></td>
</tr>
<tr class="even">
<td><code
id="wafv2_update_web_acl_:_DefaultAction">DefaultAction</code></td>
<td><p>[required] The action to perform if none of the
<code>Rules</code> contained in the <code>WebACL</code> match.</p></td>
</tr>
<tr class="odd">
<td><code
id="wafv2_update_web_acl_:_Description">Description</code></td>
<td><p>A description of the web ACL that helps with
identification.</p></td>
</tr>
<tr class="even">
<td><code id="wafv2_update_web_acl_:_Rules">Rules</code></td>
<td><p>The Rule statements used to identify the web requests that you
want to allow, block, or count. Each rule includes one top-level
statement that WAF uses to identify matching web requests, and
parameters that govern how WAF handles them.</p></td>
</tr>
<tr class="odd">
<td><code
id="wafv2_update_web_acl_:_VisibilityConfig">VisibilityConfig</code></td>
<td><p>[required] Defines and enables Amazon CloudWatch metrics and web
request sample collection.</p></td>
</tr>
<tr class="even">
<td><code id="wafv2_update_web_acl_:_LockToken">LockToken</code></td>
<td><p>[required] A token used for optimistic locking. WAF returns a
token to your <code>get</code> and <code>list</code> requests, to mark
the state of the entity at the time of the request. To make changes to
the entity associated with the token, you provide the token to
operations like <code>update</code> and <code>delete</code>. WAF uses
the token to ensure that no changes have been made to the entity since
you last retrieved it. If a change has been made, the update fails with
a <code>WAFOptimisticLockException</code>. If this happens, perform
another <code>get</code>, and use the new token returned by that
operation.</p></td>
</tr>
<tr class="odd">
<td><code
id="wafv2_update_web_acl_:_CustomResponseBodies">CustomResponseBodies</code></td>
<td><p>A map of custom response keys and content bodies. When you create
a rule with a block action, you can send a custom response to the web
request. You define these for the web ACL, and then use them in the
rules and default actions that you define in the web ACL.</p>
<p>For information about customizing web requests and responses, see <a
href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-custom-request-response.html">Customizing
web requests and responses in WAF</a> in the <em>WAF Developer
Guide</em>.</p>
<p>For information about the limits on count and size for custom request
and response settings, see <a
href="https://docs.aws.amazon.com/waf/latest/developerguide/limits.html">WAF
quotas</a> in the <em>WAF Developer Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="wafv2_update_web_acl_:_CaptchaConfig">CaptchaConfig</code></td>
<td><p>Specifies how WAF should handle <code>CAPTCHA</code> evaluations
for rules that don't have their own <code>CaptchaConfig</code> settings.
If you don't specify this, WAF uses its default settings for
<code>CaptchaConfig</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="wafv2_update_web_acl_:_ChallengeConfig">ChallengeConfig</code></td>
<td><p>Specifies how WAF should handle challenge evaluations for rules
that don't have their own <code>ChallengeConfig</code> settings. If you
don't specify this, WAF uses its default settings for
<code>ChallengeConfig</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="wafv2_update_web_acl_:_TokenDomains">TokenDomains</code></td>
<td><p>Specifies the domains that WAF should accept in a web request
token. This enables the use of tokens across multiple protected
websites. When WAF provides a token, it uses the domain of the Amazon
Web Services resource that the web ACL is protecting. If you don't
specify a list of token domains, WAF accepts tokens only for the domain
of the protected resource. With a token domain list, WAF accepts the
resource's host domain plus all domains in the token domain list,
including their prefixed subdomains.</p>
<p>Example JSON: <code
style="white-space: pre;">⁠"TokenDomains": { "mywebsite.com", "myotherwebsite.com" }⁠</code></p>
<p>Public suffixes aren't allowed. For example, you can't use
<code>usa.gov</code> or <code>co.uk</code> as token domains.</p></td>
</tr>
<tr class="odd">
<td><code
id="wafv2_update_web_acl_:_AssociationConfig">AssociationConfig</code></td>
<td><p>Specifies custom configurations for the associations between the
web ACL and protected resources.</p>
<p>Use this to customize the maximum size of the request body that your
protected CloudFront distributions forward to WAF for inspection. The
default is 16 KB (16,384 kilobytes).</p>
<p>You are charged additional fees when your protected resources forward
body sizes that are larger than the default. For more information, see
<a href="https://aws.amazon.com/waf/pricing/">WAF Pricing</a>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextLockToken = "string"
    )

### Request syntax

    svc$update_web_acl(
      Name = "string",
      Scope = "CLOUDFRONT"|"REGIONAL",
      Id = "string",
      DefaultAction = list(
        Block = list(
          CustomResponse = list(
            ResponseCode = 123,
            CustomResponseBodyKey = "string",
            ResponseHeaders = list(
              list(
                Name = "string",
                Value = "string"
              )
            )
          )
        ),
        Allow = list(
          CustomRequestHandling = list(
            InsertHeaders = list(
              list(
                Name = "string",
                Value = "string"
              )
            )
          )
        )
      ),
      Description = "string",
      Rules = list(
        list(
          Name = "string",
          Priority = 123,
          Statement = list(
            ByteMatchStatement = list(
              SearchString = raw,
              FieldToMatch = list(
                SingleHeader = list(
                  Name = "string"
                ),
                SingleQueryArgument = list(
                  Name = "string"
                ),
                AllQueryArguments = list(),
                UriPath = list(),
                QueryString = list(),
                Body = list(
                  OversizeHandling = "CONTINUE"|"MATCH"|"NO_MATCH"
                ),
                Method = list(),
                JsonBody = list(
                  MatchPattern = list(
                    All = list(),
                    IncludedPaths = list(
                      "string"
                    )
                  ),
                  MatchScope = "ALL"|"KEY"|"VALUE",
                  InvalidFallbackBehavior = "MATCH"|"NO_MATCH"|"EVALUATE_AS_STRING",
                  OversizeHandling = "CONTINUE"|"MATCH"|"NO_MATCH"
                ),
                Headers = list(
                  MatchPattern = list(
                    All = list(),
                    IncludedHeaders = list(
                      "string"
                    ),
                    ExcludedHeaders = list(
                      "string"
                    )
                  ),
                  MatchScope = "ALL"|"KEY"|"VALUE",
                  OversizeHandling = "CONTINUE"|"MATCH"|"NO_MATCH"
                ),
                Cookies = list(
                  MatchPattern = list(
                    All = list(),
                    IncludedCookies = list(
                      "string"
                    ),
                    ExcludedCookies = list(
                      "string"
                    )
                  ),
                  MatchScope = "ALL"|"KEY"|"VALUE",
                  OversizeHandling = "CONTINUE"|"MATCH"|"NO_MATCH"
                )
              ),
              TextTransformations = list(
                list(
                  Priority = 123,
                  Type = "NONE"|"COMPRESS_WHITE_SPACE"|"HTML_ENTITY_DECODE"|"LOWERCASE"|"CMD_LINE"|"URL_DECODE"|"BASE64_DECODE"|"HEX_DECODE"|"MD5"|"REPLACE_COMMENTS"|"ESCAPE_SEQ_DECODE"|"SQL_HEX_DECODE"|"CSS_DECODE"|"JS_DECODE"|"NORMALIZE_PATH"|"NORMALIZE_PATH_WIN"|"REMOVE_NULLS"|"REPLACE_NULLS"|"BASE64_DECODE_EXT"|"URL_DECODE_UNI"|"UTF8_TO_UNICODE"
                )
              ),
              PositionalConstraint = "EXACTLY"|"STARTS_WITH"|"ENDS_WITH"|"CONTAINS"|"CONTAINS_WORD"
            ),
            SqliMatchStatement = list(
              FieldToMatch = list(
                SingleHeader = list(
                  Name = "string"
                ),
                SingleQueryArgument = list(
                  Name = "string"
                ),
                AllQueryArguments = list(),
                UriPath = list(),
                QueryString = list(),
                Body = list(
                  OversizeHandling = "CONTINUE"|"MATCH"|"NO_MATCH"
                ),
                Method = list(),
                JsonBody = list(
                  MatchPattern = list(
                    All = list(),
                    IncludedPaths = list(
                      "string"
                    )
                  ),
                  MatchScope = "ALL"|"KEY"|"VALUE",
                  InvalidFallbackBehavior = "MATCH"|"NO_MATCH"|"EVALUATE_AS_STRING",
                  OversizeHandling = "CONTINUE"|"MATCH"|"NO_MATCH"
                ),
                Headers = list(
                  MatchPattern = list(
                    All = list(),
                    IncludedHeaders = list(
                      "string"
                    ),
                    ExcludedHeaders = list(
                      "string"
                    )
                  ),
                  MatchScope = "ALL"|"KEY"|"VALUE",
                  OversizeHandling = "CONTINUE"|"MATCH"|"NO_MATCH"
                ),
                Cookies = list(
                  MatchPattern = list(
                    All = list(),
                    IncludedCookies = list(
                      "string"
                    ),
                    ExcludedCookies = list(
                      "string"
                    )
                  ),
                  MatchScope = "ALL"|"KEY"|"VALUE",
                  OversizeHandling = "CONTINUE"|"MATCH"|"NO_MATCH"
                )
              ),
              TextTransformations = list(
                list(
                  Priority = 123,
                  Type = "NONE"|"COMPRESS_WHITE_SPACE"|"HTML_ENTITY_DECODE"|"LOWERCASE"|"CMD_LINE"|"URL_DECODE"|"BASE64_DECODE"|"HEX_DECODE"|"MD5"|"REPLACE_COMMENTS"|"ESCAPE_SEQ_DECODE"|"SQL_HEX_DECODE"|"CSS_DECODE"|"JS_DECODE"|"NORMALIZE_PATH"|"NORMALIZE_PATH_WIN"|"REMOVE_NULLS"|"REPLACE_NULLS"|"BASE64_DECODE_EXT"|"URL_DECODE_UNI"|"UTF8_TO_UNICODE"
                )
              ),
              SensitivityLevel = "LOW"|"HIGH"
            ),
            XssMatchStatement = list(
              FieldToMatch = list(
                SingleHeader = list(
                  Name = "string"
                ),
                SingleQueryArgument = list(
                  Name = "string"
                ),
                AllQueryArguments = list(),
                UriPath = list(),
                QueryString = list(),
                Body = list(
                  OversizeHandling = "CONTINUE"|"MATCH"|"NO_MATCH"
                ),
                Method = list(),
                JsonBody = list(
                  MatchPattern = list(
                    All = list(),
                    IncludedPaths = list(
                      "string"
                    )
                  ),
                  MatchScope = "ALL"|"KEY"|"VALUE",
                  InvalidFallbackBehavior = "MATCH"|"NO_MATCH"|"EVALUATE_AS_STRING",
                  OversizeHandling = "CONTINUE"|"MATCH"|"NO_MATCH"
                ),
                Headers = list(
                  MatchPattern = list(
                    All = list(),
                    IncludedHeaders = list(
                      "string"
                    ),
                    ExcludedHeaders = list(
                      "string"
                    )
                  ),
                  MatchScope = "ALL"|"KEY"|"VALUE",
                  OversizeHandling = "CONTINUE"|"MATCH"|"NO_MATCH"
                ),
                Cookies = list(
                  MatchPattern = list(
                    All = list(),
                    IncludedCookies = list(
                      "string"
                    ),
                    ExcludedCookies = list(
                      "string"
                    )
                  ),
                  MatchScope = "ALL"|"KEY"|"VALUE",
                  OversizeHandling = "CONTINUE"|"MATCH"|"NO_MATCH"
                )
              ),
              TextTransformations = list(
                list(
                  Priority = 123,
                  Type = "NONE"|"COMPRESS_WHITE_SPACE"|"HTML_ENTITY_DECODE"|"LOWERCASE"|"CMD_LINE"|"URL_DECODE"|"BASE64_DECODE"|"HEX_DECODE"|"MD5"|"REPLACE_COMMENTS"|"ESCAPE_SEQ_DECODE"|"SQL_HEX_DECODE"|"CSS_DECODE"|"JS_DECODE"|"NORMALIZE_PATH"|"NORMALIZE_PATH_WIN"|"REMOVE_NULLS"|"REPLACE_NULLS"|"BASE64_DECODE_EXT"|"URL_DECODE_UNI"|"UTF8_TO_UNICODE"
                )
              )
            ),
            SizeConstraintStatement = list(
              FieldToMatch = list(
                SingleHeader = list(
                  Name = "string"
                ),
                SingleQueryArgument = list(
                  Name = "string"
                ),
                AllQueryArguments = list(),
                UriPath = list(),
                QueryString = list(),
                Body = list(
                  OversizeHandling = "CONTINUE"|"MATCH"|"NO_MATCH"
                ),
                Method = list(),
                JsonBody = list(
                  MatchPattern = list(
                    All = list(),
                    IncludedPaths = list(
                      "string"
                    )
                  ),
                  MatchScope = "ALL"|"KEY"|"VALUE",
                  InvalidFallbackBehavior = "MATCH"|"NO_MATCH"|"EVALUATE_AS_STRING",
                  OversizeHandling = "CONTINUE"|"MATCH"|"NO_MATCH"
                ),
                Headers = list(
                  MatchPattern = list(
                    All = list(),
                    IncludedHeaders = list(
                      "string"
                    ),
                    ExcludedHeaders = list(
                      "string"
                    )
                  ),
                  MatchScope = "ALL"|"KEY"|"VALUE",
                  OversizeHandling = "CONTINUE"|"MATCH"|"NO_MATCH"
                ),
                Cookies = list(
                  MatchPattern = list(
                    All = list(),
                    IncludedCookies = list(
                      "string"
                    ),
                    ExcludedCookies = list(
                      "string"
                    )
                  ),
                  MatchScope = "ALL"|"KEY"|"VALUE",
                  OversizeHandling = "CONTINUE"|"MATCH"|"NO_MATCH"
                )
              ),
              ComparisonOperator = "EQ"|"NE"|"LE"|"LT"|"GE"|"GT",
              Size = 123,
              TextTransformations = list(
                list(
                  Priority = 123,
                  Type = "NONE"|"COMPRESS_WHITE_SPACE"|"HTML_ENTITY_DECODE"|"LOWERCASE"|"CMD_LINE"|"URL_DECODE"|"BASE64_DECODE"|"HEX_DECODE"|"MD5"|"REPLACE_COMMENTS"|"ESCAPE_SEQ_DECODE"|"SQL_HEX_DECODE"|"CSS_DECODE"|"JS_DECODE"|"NORMALIZE_PATH"|"NORMALIZE_PATH_WIN"|"REMOVE_NULLS"|"REPLACE_NULLS"|"BASE64_DECODE_EXT"|"URL_DECODE_UNI"|"UTF8_TO_UNICODE"
                )
              )
            ),
            GeoMatchStatement = list(
              CountryCodes = list(
                "AF"|"AX"|"AL"|"DZ"|"AS"|"AD"|"AO"|"AI"|"AQ"|"AG"|"AR"|"AM"|"AW"|"AU"|"AT"|"AZ"|"BS"|"BH"|"BD"|"BB"|"BY"|"BE"|"BZ"|"BJ"|"BM"|"BT"|"BO"|"BQ"|"BA"|"BW"|"BV"|"BR"|"IO"|"BN"|"BG"|"BF"|"BI"|"KH"|"CM"|"CA"|"CV"|"KY"|"CF"|"TD"|"CL"|"CN"|"CX"|"CC"|"CO"|"KM"|"CG"|"CD"|"CK"|"CR"|"CI"|"HR"|"CU"|"CW"|"CY"|"CZ"|"DK"|"DJ"|"DM"|"DO"|"EC"|"EG"|"SV"|"GQ"|"ER"|"EE"|"ET"|"FK"|"FO"|"FJ"|"FI"|"FR"|"GF"|"PF"|"TF"|"GA"|"GM"|"GE"|"DE"|"GH"|"GI"|"GR"|"GL"|"GD"|"GP"|"GU"|"GT"|"GG"|"GN"|"GW"|"GY"|"HT"|"HM"|"VA"|"HN"|"HK"|"HU"|"IS"|"IN"|"ID"|"IR"|"IQ"|"IE"|"IM"|"IL"|"IT"|"JM"|"JP"|"JE"|"JO"|"KZ"|"KE"|"KI"|"KP"|"KR"|"KW"|"KG"|"LA"|"LV"|"LB"|"LS"|"LR"|"LY"|"LI"|"LT"|"LU"|"MO"|"MK"|"MG"|"MW"|"MY"|"MV"|"ML"|"MT"|"MH"|"MQ"|"MR"|"MU"|"YT"|"MX"|"FM"|"MD"|"MC"|"MN"|"ME"|"MS"|"MA"|"MZ"|"MM"|"NA"|"NR"|"NP"|"NL"|"NC"|"NZ"|"NI"|"NE"|"NG"|"NU"|"NF"|"MP"|"NO"|"OM"|"PK"|"PW"|"PS"|"PA"|"PG"|"PY"|"PE"|"PH"|"PN"|"PL"|"PT"|"PR"|"QA"|"RE"|"RO"|"RU"|"RW"|"BL"|"SH"|"KN"|"LC"|"MF"|"PM"|"VC"|"WS"|"SM"|"ST"|"SA"|"SN"|"RS"|"SC"|"SL"|"SG"|"SX"|"SK"|"SI"|"SB"|"SO"|"ZA"|"GS"|"SS"|"ES"|"LK"|"SD"|"SR"|"SJ"|"SZ"|"SE"|"CH"|"SY"|"TW"|"TJ"|"TZ"|"TH"|"TL"|"TG"|"TK"|"TO"|"TT"|"TN"|"TR"|"TM"|"TC"|"TV"|"UG"|"UA"|"AE"|"GB"|"US"|"UM"|"UY"|"UZ"|"VU"|"VE"|"VN"|"VG"|"VI"|"WF"|"EH"|"YE"|"ZM"|"ZW"|"XK"
              ),
              ForwardedIPConfig = list(
                HeaderName = "string",
                FallbackBehavior = "MATCH"|"NO_MATCH"
              )
            ),
            RuleGroupReferenceStatement = list(
              ARN = "string",
              ExcludedRules = list(
                list(
                  Name = "string"
                )
              ),
              RuleActionOverrides = list(
                list(
                  Name = "string",
                  ActionToUse = list(
                    Block = list(
                      CustomResponse = list(
                        ResponseCode = 123,
                        CustomResponseBodyKey = "string",
                        ResponseHeaders = list(
                          list(
                            Name = "string",
                            Value = "string"
                          )
                        )
                      )
                    ),
                    Allow = list(
                      CustomRequestHandling = list(
                        InsertHeaders = list(
                          list(
                            Name = "string",
                            Value = "string"
                          )
                        )
                      )
                    ),
                    Count = list(
                      CustomRequestHandling = list(
                        InsertHeaders = list(
                          list(
                            Name = "string",
                            Value = "string"
                          )
                        )
                      )
                    ),
                    Captcha = list(
                      CustomRequestHandling = list(
                        InsertHeaders = list(
                          list(
                            Name = "string",
                            Value = "string"
                          )
                        )
                      )
                    ),
                    Challenge = list(
                      CustomRequestHandling = list(
                        InsertHeaders = list(
                          list(
                            Name = "string",
                            Value = "string"
                          )
                        )
                      )
                    )
                  )
                )
              )
            ),
            IPSetReferenceStatement = list(
              ARN = "string",
              IPSetForwardedIPConfig = list(
                HeaderName = "string",
                FallbackBehavior = "MATCH"|"NO_MATCH",
                Position = "FIRST"|"LAST"|"ANY"
              )
            ),
            RegexPatternSetReferenceStatement = list(
              ARN = "string",
              FieldToMatch = list(
                SingleHeader = list(
                  Name = "string"
                ),
                SingleQueryArgument = list(
                  Name = "string"
                ),
                AllQueryArguments = list(),
                UriPath = list(),
                QueryString = list(),
                Body = list(
                  OversizeHandling = "CONTINUE"|"MATCH"|"NO_MATCH"
                ),
                Method = list(),
                JsonBody = list(
                  MatchPattern = list(
                    All = list(),
                    IncludedPaths = list(
                      "string"
                    )
                  ),
                  MatchScope = "ALL"|"KEY"|"VALUE",
                  InvalidFallbackBehavior = "MATCH"|"NO_MATCH"|"EVALUATE_AS_STRING",
                  OversizeHandling = "CONTINUE"|"MATCH"|"NO_MATCH"
                ),
                Headers = list(
                  MatchPattern = list(
                    All = list(),
                    IncludedHeaders = list(
                      "string"
                    ),
                    ExcludedHeaders = list(
                      "string"
                    )
                  ),
                  MatchScope = "ALL"|"KEY"|"VALUE",
                  OversizeHandling = "CONTINUE"|"MATCH"|"NO_MATCH"
                ),
                Cookies = list(
                  MatchPattern = list(
                    All = list(),
                    IncludedCookies = list(
                      "string"
                    ),
                    ExcludedCookies = list(
                      "string"
                    )
                  ),
                  MatchScope = "ALL"|"KEY"|"VALUE",
                  OversizeHandling = "CONTINUE"|"MATCH"|"NO_MATCH"
                )
              ),
              TextTransformations = list(
                list(
                  Priority = 123,
                  Type = "NONE"|"COMPRESS_WHITE_SPACE"|"HTML_ENTITY_DECODE"|"LOWERCASE"|"CMD_LINE"|"URL_DECODE"|"BASE64_DECODE"|"HEX_DECODE"|"MD5"|"REPLACE_COMMENTS"|"ESCAPE_SEQ_DECODE"|"SQL_HEX_DECODE"|"CSS_DECODE"|"JS_DECODE"|"NORMALIZE_PATH"|"NORMALIZE_PATH_WIN"|"REMOVE_NULLS"|"REPLACE_NULLS"|"BASE64_DECODE_EXT"|"URL_DECODE_UNI"|"UTF8_TO_UNICODE"
                )
              )
            ),
            RateBasedStatement = list(
              Limit = 123,
              AggregateKeyType = "IP"|"FORWARDED_IP"|"CUSTOM_KEYS"|"CONSTANT",
              ScopeDownStatement = list(),
              ForwardedIPConfig = list(
                HeaderName = "string",
                FallbackBehavior = "MATCH"|"NO_MATCH"
              ),
              CustomKeys = list(
                list(
                  Header = list(
                    Name = "string",
                    TextTransformations = list(
                      list(
                        Priority = 123,
                        Type = "NONE"|"COMPRESS_WHITE_SPACE"|"HTML_ENTITY_DECODE"|"LOWERCASE"|"CMD_LINE"|"URL_DECODE"|"BASE64_DECODE"|"HEX_DECODE"|"MD5"|"REPLACE_COMMENTS"|"ESCAPE_SEQ_DECODE"|"SQL_HEX_DECODE"|"CSS_DECODE"|"JS_DECODE"|"NORMALIZE_PATH"|"NORMALIZE_PATH_WIN"|"REMOVE_NULLS"|"REPLACE_NULLS"|"BASE64_DECODE_EXT"|"URL_DECODE_UNI"|"UTF8_TO_UNICODE"
                      )
                    )
                  ),
                  Cookie = list(
                    Name = "string",
                    TextTransformations = list(
                      list(
                        Priority = 123,
                        Type = "NONE"|"COMPRESS_WHITE_SPACE"|"HTML_ENTITY_DECODE"|"LOWERCASE"|"CMD_LINE"|"URL_DECODE"|"BASE64_DECODE"|"HEX_DECODE"|"MD5"|"REPLACE_COMMENTS"|"ESCAPE_SEQ_DECODE"|"SQL_HEX_DECODE"|"CSS_DECODE"|"JS_DECODE"|"NORMALIZE_PATH"|"NORMALIZE_PATH_WIN"|"REMOVE_NULLS"|"REPLACE_NULLS"|"BASE64_DECODE_EXT"|"URL_DECODE_UNI"|"UTF8_TO_UNICODE"
                      )
                    )
                  ),
                  QueryArgument = list(
                    Name = "string",
                    TextTransformations = list(
                      list(
                        Priority = 123,
                        Type = "NONE"|"COMPRESS_WHITE_SPACE"|"HTML_ENTITY_DECODE"|"LOWERCASE"|"CMD_LINE"|"URL_DECODE"|"BASE64_DECODE"|"HEX_DECODE"|"MD5"|"REPLACE_COMMENTS"|"ESCAPE_SEQ_DECODE"|"SQL_HEX_DECODE"|"CSS_DECODE"|"JS_DECODE"|"NORMALIZE_PATH"|"NORMALIZE_PATH_WIN"|"REMOVE_NULLS"|"REPLACE_NULLS"|"BASE64_DECODE_EXT"|"URL_DECODE_UNI"|"UTF8_TO_UNICODE"
                      )
                    )
                  ),
                  QueryString = list(
                    TextTransformations = list(
                      list(
                        Priority = 123,
                        Type = "NONE"|"COMPRESS_WHITE_SPACE"|"HTML_ENTITY_DECODE"|"LOWERCASE"|"CMD_LINE"|"URL_DECODE"|"BASE64_DECODE"|"HEX_DECODE"|"MD5"|"REPLACE_COMMENTS"|"ESCAPE_SEQ_DECODE"|"SQL_HEX_DECODE"|"CSS_DECODE"|"JS_DECODE"|"NORMALIZE_PATH"|"NORMALIZE_PATH_WIN"|"REMOVE_NULLS"|"REPLACE_NULLS"|"BASE64_DECODE_EXT"|"URL_DECODE_UNI"|"UTF8_TO_UNICODE"
                      )
                    )
                  ),
                  HTTPMethod = list(),
                  ForwardedIP = list(),
                  IP = list(),
                  LabelNamespace = list(
                    Namespace = "string"
                  )
                )
              )
            ),
            AndStatement = list(
              Statements = list(
                list()
              )
            ),
            OrStatement = list(
              Statements = list(
                list()
              )
            ),
            NotStatement = list(
              Statement = list()
            ),
            ManagedRuleGroupStatement = list(
              VendorName = "string",
              Name = "string",
              Version = "string",
              ExcludedRules = list(
                list(
                  Name = "string"
                )
              ),
              ScopeDownStatement = list(),
              ManagedRuleGroupConfigs = list(
                list(
                  LoginPath = "string",
                  PayloadType = "JSON"|"FORM_ENCODED",
                  UsernameField = list(
                    Identifier = "string"
                  ),
                  PasswordField = list(
                    Identifier = "string"
                  ),
                  AWSManagedRulesBotControlRuleSet = list(
                    InspectionLevel = "COMMON"|"TARGETED"
                  ),
                  AWSManagedRulesATPRuleSet = list(
                    LoginPath = "string",
                    RequestInspection = list(
                      PayloadType = "JSON"|"FORM_ENCODED",
                      UsernameField = list(
                        Identifier = "string"
                      ),
                      PasswordField = list(
                        Identifier = "string"
                      )
                    ),
                    ResponseInspection = list(
                      StatusCode = list(
                        SuccessCodes = list(
                          123
                        ),
                        FailureCodes = list(
                          123
                        )
                      ),
                      Header = list(
                        Name = "string",
                        SuccessValues = list(
                          "string"
                        ),
                        FailureValues = list(
                          "string"
                        )
                      ),
                      BodyContains = list(
                        SuccessStrings = list(
                          "string"
                        ),
                        FailureStrings = list(
                          "string"
                        )
                      ),
                      Json = list(
                        Identifier = "string",
                        SuccessValues = list(
                          "string"
                        ),
                        FailureValues = list(
                          "string"
                        )
                      )
                    )
                  )
                )
              ),
              RuleActionOverrides = list(
                list(
                  Name = "string",
                  ActionToUse = list(
                    Block = list(
                      CustomResponse = list(
                        ResponseCode = 123,
                        CustomResponseBodyKey = "string",
                        ResponseHeaders = list(
                          list(
                            Name = "string",
                            Value = "string"
                          )
                        )
                      )
                    ),
                    Allow = list(
                      CustomRequestHandling = list(
                        InsertHeaders = list(
                          list(
                            Name = "string",
                            Value = "string"
                          )
                        )
                      )
                    ),
                    Count = list(
                      CustomRequestHandling = list(
                        InsertHeaders = list(
                          list(
                            Name = "string",
                            Value = "string"
                          )
                        )
                      )
                    ),
                    Captcha = list(
                      CustomRequestHandling = list(
                        InsertHeaders = list(
                          list(
                            Name = "string",
                            Value = "string"
                          )
                        )
                      )
                    ),
                    Challenge = list(
                      CustomRequestHandling = list(
                        InsertHeaders = list(
                          list(
                            Name = "string",
                            Value = "string"
                          )
                        )
                      )
                    )
                  )
                )
              )
            ),
            LabelMatchStatement = list(
              Scope = "LABEL"|"NAMESPACE",
              Key = "string"
            ),
            RegexMatchStatement = list(
              RegexString = "string",
              FieldToMatch = list(
                SingleHeader = list(
                  Name = "string"
                ),
                SingleQueryArgument = list(
                  Name = "string"
                ),
                AllQueryArguments = list(),
                UriPath = list(),
                QueryString = list(),
                Body = list(
                  OversizeHandling = "CONTINUE"|"MATCH"|"NO_MATCH"
                ),
                Method = list(),
                JsonBody = list(
                  MatchPattern = list(
                    All = list(),
                    IncludedPaths = list(
                      "string"
                    )
                  ),
                  MatchScope = "ALL"|"KEY"|"VALUE",
                  InvalidFallbackBehavior = "MATCH"|"NO_MATCH"|"EVALUATE_AS_STRING",
                  OversizeHandling = "CONTINUE"|"MATCH"|"NO_MATCH"
                ),
                Headers = list(
                  MatchPattern = list(
                    All = list(),
                    IncludedHeaders = list(
                      "string"
                    ),
                    ExcludedHeaders = list(
                      "string"
                    )
                  ),
                  MatchScope = "ALL"|"KEY"|"VALUE",
                  OversizeHandling = "CONTINUE"|"MATCH"|"NO_MATCH"
                ),
                Cookies = list(
                  MatchPattern = list(
                    All = list(),
                    IncludedCookies = list(
                      "string"
                    ),
                    ExcludedCookies = list(
                      "string"
                    )
                  ),
                  MatchScope = "ALL"|"KEY"|"VALUE",
                  OversizeHandling = "CONTINUE"|"MATCH"|"NO_MATCH"
                )
              ),
              TextTransformations = list(
                list(
                  Priority = 123,
                  Type = "NONE"|"COMPRESS_WHITE_SPACE"|"HTML_ENTITY_DECODE"|"LOWERCASE"|"CMD_LINE"|"URL_DECODE"|"BASE64_DECODE"|"HEX_DECODE"|"MD5"|"REPLACE_COMMENTS"|"ESCAPE_SEQ_DECODE"|"SQL_HEX_DECODE"|"CSS_DECODE"|"JS_DECODE"|"NORMALIZE_PATH"|"NORMALIZE_PATH_WIN"|"REMOVE_NULLS"|"REPLACE_NULLS"|"BASE64_DECODE_EXT"|"URL_DECODE_UNI"|"UTF8_TO_UNICODE"
                )
              )
            )
          ),
          Action = list(
            Block = list(
              CustomResponse = list(
                ResponseCode = 123,
                CustomResponseBodyKey = "string",
                ResponseHeaders = list(
                  list(
                    Name = "string",
                    Value = "string"
                  )
                )
              )
            ),
            Allow = list(
              CustomRequestHandling = list(
                InsertHeaders = list(
                  list(
                    Name = "string",
                    Value = "string"
                  )
                )
              )
            ),
            Count = list(
              CustomRequestHandling = list(
                InsertHeaders = list(
                  list(
                    Name = "string",
                    Value = "string"
                  )
                )
              )
            ),
            Captcha = list(
              CustomRequestHandling = list(
                InsertHeaders = list(
                  list(
                    Name = "string",
                    Value = "string"
                  )
                )
              )
            ),
            Challenge = list(
              CustomRequestHandling = list(
                InsertHeaders = list(
                  list(
                    Name = "string",
                    Value = "string"
                  )
                )
              )
            )
          ),
          OverrideAction = list(
            Count = list(
              CustomRequestHandling = list(
                InsertHeaders = list(
                  list(
                    Name = "string",
                    Value = "string"
                  )
                )
              )
            ),
            None = list()
          ),
          RuleLabels = list(
            list(
              Name = "string"
            )
          ),
          VisibilityConfig = list(
            SampledRequestsEnabled = TRUE|FALSE,
            CloudWatchMetricsEnabled = TRUE|FALSE,
            MetricName = "string"
          ),
          CaptchaConfig = list(
            ImmunityTimeProperty = list(
              ImmunityTime = 123
            )
          ),
          ChallengeConfig = list(
            ImmunityTimeProperty = list(
              ImmunityTime = 123
            )
          )
        )
      ),
      VisibilityConfig = list(
        SampledRequestsEnabled = TRUE|FALSE,
        CloudWatchMetricsEnabled = TRUE|FALSE,
        MetricName = "string"
      ),
      LockToken = "string",
      CustomResponseBodies = list(
        list(
          ContentType = "TEXT_PLAIN"|"TEXT_HTML"|"APPLICATION_JSON",
          Content = "string"
        )
      ),
      CaptchaConfig = list(
        ImmunityTimeProperty = list(
          ImmunityTime = 123
        )
      ),
      ChallengeConfig = list(
        ImmunityTimeProperty = list(
          ImmunityTime = 123
        )
      ),
      TokenDomains = list(
        "string"
      ),
      AssociationConfig = list(
        RequestBody = list(
          list(
            DefaultSizeInspectionLimit = "KB_16"|"KB_32"|"KB_48"|"KB_64"
          )
        )
      )
    )
