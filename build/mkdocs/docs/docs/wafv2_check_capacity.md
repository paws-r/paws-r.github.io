<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>wafv2_check_capacity</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the web ACL capacity unit (WCU) requirements for a specified scope and set of rules

### Description

Returns the web ACL capacity unit (WCU) requirements for a specified
scope and set of rules. You can use this to check the capacity
requirements for the rules you want to use in a RuleGroup or WebACL.

WAF uses WCUs to calculate and control the operating resources that are
used to run your rules, rule groups, and web ACLs. WAF calculates
capacity differently for each rule type, to reflect the relative cost of
each rule. Simple rules that cost little to run use fewer WCUs than more
complex rules that use more processing power. Rule group capacity is
fixed at creation, which helps users plan their web ACL WCU usage when
they use a rule group. For more information, see [WAF web ACL capacity
units
(WCU)](https://docs.aws.amazon.com/waf/latest/developerguide/aws-waf-capacity-units.html)
in the *WAF Developer Guide*.

### Usage

    wafv2_check_capacity(Scope, Rules)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="wafv2_check_capacity_:_Scope">Scope</code></td>
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
<tr class="even">
<td><code id="wafv2_check_capacity_:_Rules">Rules</code></td>
<td><p>[required] An array of Rule that you're configuring to use in a
rule group or web ACL.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Capacity = 123
    )

### Request syntax

    svc$check_capacity(
      Scope = "CLOUDFRONT"|"REGIONAL",
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
      )
    )
