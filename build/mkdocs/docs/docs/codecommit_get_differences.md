<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codecommit_get_differences</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about the differences in a valid commit specifier (such as a branch, tag, HEAD, commit ID, or other fully qualified reference)

### Description

Returns information about the differences in a valid commit specifier
(such as a branch, tag, HEAD, commit ID, or other fully qualified
reference). Results can be limited to a specified path.

### Usage

    codecommit_get_differences(repositoryName, beforeCommitSpecifier,
      afterCommitSpecifier, beforePath, afterPath, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codecommit_get_differences_:_repositoryName">repositoryName</code></td>
<td><p>[required] The name of the repository where you want to get
differences.</p></td>
</tr>
<tr class="even">
<td><code
id="codecommit_get_differences_:_beforeCommitSpecifier">beforeCommitSpecifier</code></td>
<td><p>The branch, tag, HEAD, or other fully qualified reference used to
identify a commit (for example, the full commit ID). Optional. If not
specified, all changes before the <code>afterCommitSpecifier</code>
value are shown. If you do not use <code>beforeCommitSpecifier</code> in
your request, consider limiting the results with
<code>maxResults</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="codecommit_get_differences_:_afterCommitSpecifier">afterCommitSpecifier</code></td>
<td><p>[required] The branch, tag, HEAD, or other fully qualified
reference used to identify a commit.</p></td>
</tr>
<tr class="even">
<td><code
id="codecommit_get_differences_:_beforePath">beforePath</code></td>
<td><p>The file path in which to check for differences. Limits the
results to this path. Can also be used to specify the previous name of a
directory or folder. If <code>beforePath</code> and
<code>afterPath</code> are not specified, differences are shown for all
paths.</p></td>
</tr>
<tr class="odd">
<td><code
id="codecommit_get_differences_:_afterPath">afterPath</code></td>
<td><p>The file path in which to check differences. Limits the results
to this path. Can also be used to specify the changed name of a
directory or folder, if it has changed. If not specified, differences
are shown for all paths.</p></td>
</tr>
<tr class="even">
<td><code
id="codecommit_get_differences_:_MaxResults">MaxResults</code></td>
<td><p>A non-zero, non-negative integer used to limit the number of
returned results.</p></td>
</tr>
<tr class="odd">
<td><code
id="codecommit_get_differences_:_NextToken">NextToken</code></td>
<td><p>An enumeration token that, when provided in a request, returns
the next batch of the results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      differences = list(
        list(
          beforeBlob = list(
            blobId = "string",
            path = "string",
            mode = "string"
          ),
          afterBlob = list(
            blobId = "string",
            path = "string",
            mode = "string"
          ),
          changeType = "A"|"M"|"D"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$get_differences(
      repositoryName = "string",
      beforeCommitSpecifier = "string",
      afterCommitSpecifier = "string",
      beforePath = "string",
      afterPath = "string",
      MaxResults = 123,
      NextToken = "string"
    )
