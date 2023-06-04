<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_list_compilation_jobs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists model compilation jobs that satisfy various filters

### Description

Lists model compilation jobs that satisfy various filters.

To create a model compilation job, use `create_compilation_job`. To get
information about a particular model compilation job you have created,
use `describe_compilation_job`.

### Usage

    sagemaker_list_compilation_jobs(NextToken, MaxResults,
      CreationTimeAfter, CreationTimeBefore, LastModifiedTimeAfter,
      LastModifiedTimeBefore, NameContains, StatusEquals, SortBy, SortOrder)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_list_compilation_jobs_:_NextToken">NextToken</code></td>
<td><p>If the result of the previous <code>list_compilation_jobs</code>
request was truncated, the response includes a <code>NextToken</code>.
To retrieve the next set of model compilation jobs, use the token in the
next request.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_compilation_jobs_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of model compilation jobs to return in the
response.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_compilation_jobs_:_CreationTimeAfter">CreationTimeAfter</code></td>
<td><p>A filter that returns the model compilation jobs that were
created after a specified time.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_compilation_jobs_:_CreationTimeBefore">CreationTimeBefore</code></td>
<td><p>A filter that returns the model compilation jobs that were
created before a specified time.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_compilation_jobs_:_LastModifiedTimeAfter">LastModifiedTimeAfter</code></td>
<td><p>A filter that returns the model compilation jobs that were
modified after a specified time.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_compilation_jobs_:_LastModifiedTimeBefore">LastModifiedTimeBefore</code></td>
<td><p>A filter that returns the model compilation jobs that were
modified before a specified time.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_compilation_jobs_:_NameContains">NameContains</code></td>
<td><p>A filter that returns the model compilation jobs whose name
contains a specified string.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_compilation_jobs_:_StatusEquals">StatusEquals</code></td>
<td><p>A filter that retrieves model compilation jobs with a specific
<code>CompilationJobStatus</code> status.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_compilation_jobs_:_SortBy">SortBy</code></td>
<td><p>The field by which to sort results. The default is
<code>CreationTime</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_compilation_jobs_:_SortOrder">SortOrder</code></td>
<td><p>The sort order for results. The default is
<code>Ascending</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CompilationJobSummaries = list(
        list(
          CompilationJobName = "string",
          CompilationJobArn = "string",
          CreationTime = as.POSIXct(
            "2015-01-01"
          ),
          CompilationStartTime = as.POSIXct(
            "2015-01-01"
          ),
          CompilationEndTime = as.POSIXct(
            "2015-01-01"
          ),
          CompilationTargetDevice = "lambda"|"ml_m4"|"ml_m5"|"ml_c4"|"ml_c5"|"ml_p2"|"ml_p3"|"ml_g4dn"|"ml_inf1"|"ml_eia2"|"jetson_tx1"|"jetson_tx2"|"jetson_nano"|"jetson_xavier"|"rasp3b"|"imx8qm"|"deeplens"|"rk3399"|"rk3288"|"aisage"|"sbe_c"|"qcs605"|"qcs603"|"sitara_am57x"|"amba_cv2"|"amba_cv22"|"amba_cv25"|"x86_win32"|"x86_win64"|"coreml"|"jacinto_tda4vm"|"imx8mplus",
          CompilationTargetPlatformOs = "ANDROID"|"LINUX",
          CompilationTargetPlatformArch = "X86_64"|"X86"|"ARM64"|"ARM_EABI"|"ARM_EABIHF",
          CompilationTargetPlatformAccelerator = "INTEL_GRAPHICS"|"MALI"|"NVIDIA"|"NNA",
          LastModifiedTime = as.POSIXct(
            "2015-01-01"
          ),
          CompilationJobStatus = "INPROGRESS"|"COMPLETED"|"FAILED"|"STARTING"|"STOPPING"|"STOPPED"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_compilation_jobs(
      NextToken = "string",
      MaxResults = 123,
      CreationTimeAfter = as.POSIXct(
        "2015-01-01"
      ),
      CreationTimeBefore = as.POSIXct(
        "2015-01-01"
      ),
      LastModifiedTimeAfter = as.POSIXct(
        "2015-01-01"
      ),
      LastModifiedTimeBefore = as.POSIXct(
        "2015-01-01"
      ),
      NameContains = "string",
      StatusEquals = "INPROGRESS"|"COMPLETED"|"FAILED"|"STARTING"|"STOPPING"|"STOPPED",
      SortBy = "Name"|"CreationTime"|"Status",
      SortOrder = "Ascending"|"Descending"
    )
