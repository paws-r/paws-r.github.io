<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codeguruprofiler_submit_feedback</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Sends feedback to CodeGuru Profiler about whether the anomaly detected by the analysis is useful or not

### Description

Sends feedback to CodeGuru Profiler about whether the anomaly detected
by the analysis is useful or not.

### Usage

    codeguruprofiler_submit_feedback(anomalyInstanceId, comment,
      profilingGroupName, type)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codeguruprofiler_submit_feedback_:_anomalyInstanceId">anomalyInstanceId</code></td>
<td><p>[required] The universally unique identifier (UUID) of the <a
href="https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_AnomalyInstance.html"><code>AnomalyInstance</code></a>
object that is included in the analysis data.</p></td>
</tr>
<tr class="even">
<td><code
id="codeguruprofiler_submit_feedback_:_comment">comment</code></td>
<td><p>Optional feedback about this anomaly.</p></td>
</tr>
<tr class="odd">
<td><code
id="codeguruprofiler_submit_feedback_:_profilingGroupName">profilingGroupName</code></td>
<td><p>[required] The name of the profiling group that is associated
with the analysis data.</p></td>
</tr>
<tr class="even">
<td><code id="codeguruprofiler_submit_feedback_:_type">type</code></td>
<td><p>[required] The feedback tpye. Thee are two valid values,
<code>Positive</code> and <code>Negative</code>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$submit_feedback(
      anomalyInstanceId = "string",
      comment = "string",
      profilingGroupName = "string",
      type = "Positive"|"Negative"
    )
