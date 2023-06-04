<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>xray_create_sampling_rule</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a rule to control sampling behavior for instrumented applications

### Description

Creates a rule to control sampling behavior for instrumented
applications. Services retrieve rules with `get_sampling_rules`, and
evaluate each rule in ascending order of *priority* for each request. If
a rule matches, the service records a trace, borrowing it from the
reservoir size. After 10 seconds, the service reports back to X-Ray with
`get_sampling_targets` to get updated versions of each in-use rule. The
updated rule contains a trace quota that the service can use instead of
borrowing from the reservoir.

### Usage

    xray_create_sampling_rule(SamplingRule, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="xray_create_sampling_rule_:_SamplingRule">SamplingRule</code></td>
<td><p>[required] The rule definition.</p></td>
</tr>
<tr class="even">
<td><code id="xray_create_sampling_rule_:_Tags">Tags</code></td>
<td><p>A map that contains one or more tag keys and tag values to attach
to an X-Ray sampling rule. For more information about ways to use tags,
see <a
href="https://docs.aws.amazon.com/tag-editor/latest/userguide/tagging.html">Tagging
Amazon Web Services resources</a> in the <em>Amazon Web Services General
Reference</em>.</p>
<p>The following restrictions apply to tags:</p>
<ul>
<li><p>Maximum number of user-applied tags per resource: 50</p></li>
<li><p>Maximum tag key length: 128 Unicode characters</p></li>
<li><p>Maximum tag value length: 256 Unicode characters</p></li>
<li><p>Valid values for key and value: a-z, A-Z, 0-9, space, and the
following characters: _ . : / = + - and @</p></li>
<li><p>Tag keys and values are case sensitive.</p></li>
<li><p>Don't use <code style="white-space: pre;">⁠aws:⁠</code> as a prefix
for keys; it's reserved for Amazon Web Services use.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SamplingRuleRecord = list(
        SamplingRule = list(
          RuleName = "string",
          RuleARN = "string",
          ResourceARN = "string",
          Priority = 123,
          FixedRate = 123.0,
          ReservoirSize = 123,
          ServiceName = "string",
          ServiceType = "string",
          Host = "string",
          HTTPMethod = "string",
          URLPath = "string",
          Version = 123,
          Attributes = list(
            "string"
          )
        ),
        CreatedAt = as.POSIXct(
          "2015-01-01"
        ),
        ModifiedAt = as.POSIXct(
          "2015-01-01"
        )
      )
    )

### Request syntax

    svc$create_sampling_rule(
      SamplingRule = list(
        RuleName = "string",
        RuleARN = "string",
        ResourceARN = "string",
        Priority = 123,
        FixedRate = 123.0,
        ReservoirSize = 123,
        ServiceName = "string",
        ServiceType = "string",
        Host = "string",
        HTTPMethod = "string",
        URLPath = "string",
        Version = 123,
        Attributes = list(
          "string"
        )
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
