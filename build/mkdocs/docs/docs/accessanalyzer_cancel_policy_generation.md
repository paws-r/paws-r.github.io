<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>accessanalyzer_cancel_policy_generation</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Cancels the requested policy generation

### Description

Cancels the requested policy generation.

### Usage

    accessanalyzer_cancel_policy_generation(jobId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="accessanalyzer_cancel_policy_generation_:_jobId">jobId</code></td>
<td><p>[required] The <code>JobId</code> that is returned by the
<code>start_policy_generation</code> operation. The <code>JobId</code>
can be used with <code>get_generated_policy</code> to retrieve the
generated policies or used with <code>cancel_policy_generation</code> to
cancel the policy generation request.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$cancel_policy_generation(
      jobId = "string"
    )
