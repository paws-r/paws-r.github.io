<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codedeploy_list_application_revisions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists information about revisions for an application

### Description

Lists information about revisions for an application.

### Usage

    codedeploy_list_application_revisions(applicationName, sortBy,
      sortOrder, s3Bucket, s3KeyPrefix, deployed, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codedeploy_list_application_revisions_:_applicationName">applicationName</code></td>
<td><p>[required] The name of an CodeDeploy application associated with
the IAM user or Amazon Web Services account.</p></td>
</tr>
<tr class="even">
<td><code
id="codedeploy_list_application_revisions_:_sortBy">sortBy</code></td>
<td><p>The column name to use to sort the list results:</p>
<ul>
<li><p><code>registerTime</code>: Sort by the time the revisions were
registered with CodeDeploy.</p></li>
<li><p><code>firstUsedTime</code>: Sort by the time the revisions were
first used in a deployment.</p></li>
<li><p><code>lastUsedTime</code>: Sort by the time the revisions were
last used in a deployment.</p></li>
</ul>
<p>If not specified or set to null, the results are returned in an
arbitrary order.</p></td>
</tr>
<tr class="odd">
<td><code
id="codedeploy_list_application_revisions_:_sortOrder">sortOrder</code></td>
<td><p>The order in which to sort the list results:</p>
<ul>
<li><p><code>ascending</code>: ascending order.</p></li>
<li><p><code>descending</code>: descending order.</p></li>
</ul>
<p>If not specified, the results are sorted in ascending order.</p>
<p>If set to null, the results are sorted in an arbitrary
order.</p></td>
</tr>
<tr class="even">
<td><code
id="codedeploy_list_application_revisions_:_s3Bucket">s3Bucket</code></td>
<td><p>An Amazon S3 bucket name to limit the search for revisions.</p>
<p>If set to null, all of the user's buckets are searched.</p></td>
</tr>
<tr class="odd">
<td><code
id="codedeploy_list_application_revisions_:_s3KeyPrefix">s3KeyPrefix</code></td>
<td><p>A key prefix for the set of Amazon S3 objects to limit the search
for revisions.</p></td>
</tr>
<tr class="even">
<td><code
id="codedeploy_list_application_revisions_:_deployed">deployed</code></td>
<td><p>Whether to list revisions based on whether the revision is the
target revision of a deployment group:</p>
<ul>
<li><p><code>include</code>: List revisions that are target revisions of
a deployment group.</p></li>
<li><p><code>exclude</code>: Do not list revisions that are target
revisions of a deployment group.</p></li>
<li><p><code>ignore</code>: List all revisions.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="codedeploy_list_application_revisions_:_nextToken">nextToken</code></td>
<td><p>An identifier returned from the previous
<code>list_application_revisions</code> call. It can be used to return
the next set of applications in the list.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      revisions = list(
        list(
          revisionType = "S3"|"GitHub"|"String"|"AppSpecContent",
          s3Location = list(
            bucket = "string",
            key = "string",
            bundleType = "tar"|"tgz"|"zip"|"YAML"|"JSON",
            version = "string",
            eTag = "string"
          ),
          gitHubLocation = list(
            repository = "string",
            commitId = "string"
          ),
          string = list(
            content = "string",
            sha256 = "string"
          ),
          appSpecContent = list(
            content = "string",
            sha256 = "string"
          )
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_application_revisions(
      applicationName = "string",
      sortBy = "registerTime"|"firstUsedTime"|"lastUsedTime",
      sortOrder = "ascending"|"descending",
      s3Bucket = "string",
      s3KeyPrefix = "string",
      deployed = "include"|"exclude"|"ignore",
      nextToken = "string"
    )
