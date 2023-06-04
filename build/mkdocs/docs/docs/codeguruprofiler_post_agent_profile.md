<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codeguruprofiler_post_agent_profile</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Submits profiling data to an aggregated profile of a profiling group

### Description

Submits profiling data to an aggregated profile of a profiling group. To
get an aggregated profile that is created with this profiling data, use
[`get_profile`](https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_GetProfile.html)
.

### Usage

    codeguruprofiler_post_agent_profile(agentProfile, contentType,
      profileToken, profilingGroupName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codeguruprofiler_post_agent_profile_:_agentProfile">agentProfile</code></td>
<td><p>[required] The submitted profiling data.</p></td>
</tr>
<tr class="even">
<td><code
id="codeguruprofiler_post_agent_profile_:_contentType">contentType</code></td>
<td><p>[required] The format of the submitted profiling data. The format
maps to the <code>Accept</code> and <code>Content-Type</code> headers of
the HTTP request. You can specify one of the following: or the default
.</p>
<div class="sourceCode">
<pre><code> &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;application/json&lt;/code&gt; — standard JSON format &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;application/x-amzn-ion&lt;/code&gt; — the Amazon Ion data format. For more information, see &lt;a href=&quot;http://amzn.github.io/ion-docs/&quot;&gt;Amazon Ion&lt;/a&gt;. &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;</code></pre>
</div></td>
</tr>
<tr class="odd">
<td><code
id="codeguruprofiler_post_agent_profile_:_profileToken">profileToken</code></td>
<td><p>Amazon CodeGuru Profiler uses this universally unique identifier
(UUID) to prevent the accidental submission of duplicate profiling data
if there are failures and retries.</p></td>
</tr>
<tr class="even">
<td><code
id="codeguruprofiler_post_agent_profile_:_profilingGroupName">profilingGroupName</code></td>
<td><p>[required] The name of the profiling group with the aggregated
profile that receives the submitted profiling data.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$post_agent_profile(
      agentProfile = raw,
      contentType = "string",
      profileToken = "string",
      profilingGroupName = "string"
    )
