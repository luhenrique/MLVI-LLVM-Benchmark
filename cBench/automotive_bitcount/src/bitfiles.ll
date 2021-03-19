; ModuleID = 'bitfiles.c'
source_filename = "bitfiles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bfile = type { %struct._IO_FILE*, i8, i8, i8, i8 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bfile* @bfopen(i8* %0, i8* %1) #0 {
  %3 = alloca %struct.bfile*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.bfile*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = call noalias i8* @malloc(i64 16) #3
  %8 = bitcast i8* %7 to %struct.bfile*
  store %struct.bfile* %8, %struct.bfile** %6, align 8
  %9 = load %struct.bfile*, %struct.bfile** %6, align 8
  %10 = icmp eq %struct.bfile* null, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store %struct.bfile* null, %struct.bfile** %3, align 8
  br label %31

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call %struct._IO_FILE* @fopen(i8* %13, i8* %14)
  %16 = load %struct.bfile*, %struct.bfile** %6, align 8
  %17 = getelementptr inbounds %struct.bfile, %struct.bfile* %16, i32 0, i32 0
  store %struct._IO_FILE* %15, %struct._IO_FILE** %17, align 8
  %18 = load %struct.bfile*, %struct.bfile** %6, align 8
  %19 = getelementptr inbounds %struct.bfile, %struct.bfile* %18, i32 0, i32 0
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %19, align 8
  %21 = icmp eq %struct._IO_FILE* null, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %12
  %23 = load %struct.bfile*, %struct.bfile** %6, align 8
  %24 = bitcast %struct.bfile* %23 to i8*
  call void @free(i8* %24) #3
  store %struct.bfile* null, %struct.bfile** %3, align 8
  br label %31

25:                                               ; preds = %12
  %26 = load %struct.bfile*, %struct.bfile** %6, align 8
  %27 = getelementptr inbounds %struct.bfile, %struct.bfile* %26, i32 0, i32 2
  store i8 0, i8* %27, align 1
  %28 = load %struct.bfile*, %struct.bfile** %6, align 8
  %29 = getelementptr inbounds %struct.bfile, %struct.bfile* %28, i32 0, i32 4
  store i8 0, i8* %29, align 1
  %30 = load %struct.bfile*, %struct.bfile** %6, align 8
  store %struct.bfile* %30, %struct.bfile** %3, align 8
  br label %31

31:                                               ; preds = %25, %22, %11
  %32 = load %struct.bfile*, %struct.bfile** %3, align 8
  ret %struct.bfile* %32
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #1

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #2

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfread(%struct.bfile* %0) #0 {
  %2 = alloca %struct.bfile*, align 8
  store %struct.bfile* %0, %struct.bfile** %2, align 8
  %3 = load %struct.bfile*, %struct.bfile** %2, align 8
  %4 = getelementptr inbounds %struct.bfile, %struct.bfile* %3, i32 0, i32 2
  %5 = load i8, i8* %4, align 1
  %6 = sext i8 %5 to i32
  %7 = icmp eq i32 0, %6
  br i1 %7, label %8, label %18

8:                                                ; preds = %1
  %9 = load %struct.bfile*, %struct.bfile** %2, align 8
  %10 = getelementptr inbounds %struct.bfile, %struct.bfile* %9, i32 0, i32 0
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %12 = call i32 @fgetc(%struct._IO_FILE* %11)
  %13 = trunc i32 %12 to i8
  %14 = load %struct.bfile*, %struct.bfile** %2, align 8
  %15 = getelementptr inbounds %struct.bfile, %struct.bfile* %14, i32 0, i32 1
  store i8 %13, i8* %15, align 8
  %16 = load %struct.bfile*, %struct.bfile** %2, align 8
  %17 = getelementptr inbounds %struct.bfile, %struct.bfile* %16, i32 0, i32 2
  store i8 8, i8* %17, align 1
  br label %18

18:                                               ; preds = %8, %1
  %19 = load %struct.bfile*, %struct.bfile** %2, align 8
  %20 = getelementptr inbounds %struct.bfile, %struct.bfile* %19, i32 0, i32 2
  %21 = load i8, i8* %20, align 1
  %22 = add i8 %21, -1
  store i8 %22, i8* %20, align 1
  %23 = load %struct.bfile*, %struct.bfile** %2, align 8
  %24 = getelementptr inbounds %struct.bfile, %struct.bfile* %23, i32 0, i32 1
  %25 = load i8, i8* %24, align 8
  %26 = sext i8 %25 to i32
  %27 = load %struct.bfile*, %struct.bfile** %2, align 8
  %28 = getelementptr inbounds %struct.bfile, %struct.bfile* %27, i32 0, i32 2
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = shl i32 1, %30
  %32 = and i32 %26, %31
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i32
  ret i32 %34
}

declare dso_local i32 @fgetc(%struct._IO_FILE*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfwrite(i32 %0, %struct.bfile* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bfile*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.bfile* %1, %struct.bfile** %4, align 8
  %5 = load %struct.bfile*, %struct.bfile** %4, align 8
  %6 = getelementptr inbounds %struct.bfile, %struct.bfile* %5, i32 0, i32 4
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp eq i32 8, %8
  br i1 %9, label %10, label %21

10:                                               ; preds = %2
  %11 = load %struct.bfile*, %struct.bfile** %4, align 8
  %12 = getelementptr inbounds %struct.bfile, %struct.bfile* %11, i32 0, i32 3
  %13 = load i8, i8* %12, align 2
  %14 = sext i8 %13 to i32
  %15 = load %struct.bfile*, %struct.bfile** %4, align 8
  %16 = getelementptr inbounds %struct.bfile, %struct.bfile* %15, i32 0, i32 0
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %16, align 8
  %18 = call i32 @fputc(i32 %14, %struct._IO_FILE* %17)
  %19 = load %struct.bfile*, %struct.bfile** %4, align 8
  %20 = getelementptr inbounds %struct.bfile, %struct.bfile* %19, i32 0, i32 4
  store i8 0, i8* %20, align 1
  br label %21

21:                                               ; preds = %10, %2
  %22 = load %struct.bfile*, %struct.bfile** %4, align 8
  %23 = getelementptr inbounds %struct.bfile, %struct.bfile* %22, i32 0, i32 4
  %24 = load i8, i8* %23, align 1
  %25 = add i8 %24, 1
  store i8 %25, i8* %23, align 1
  %26 = load %struct.bfile*, %struct.bfile** %4, align 8
  %27 = getelementptr inbounds %struct.bfile, %struct.bfile* %26, i32 0, i32 3
  %28 = load i8, i8* %27, align 2
  %29 = sext i8 %28 to i32
  %30 = shl i32 %29, 1
  %31 = trunc i32 %30 to i8
  store i8 %31, i8* %27, align 2
  %32 = load i32, i32* %3, align 4
  %33 = and i32 %32, 1
  %34 = load %struct.bfile*, %struct.bfile** %4, align 8
  %35 = getelementptr inbounds %struct.bfile, %struct.bfile* %34, i32 0, i32 3
  %36 = load i8, i8* %35, align 2
  %37 = sext i8 %36 to i32
  %38 = or i32 %37, %33
  %39 = trunc i32 %38 to i8
  store i8 %39, i8* %35, align 2
  ret void
}

declare dso_local i32 @fputc(i32, %struct._IO_FILE*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfclose(%struct.bfile* %0) #0 {
  %2 = alloca %struct.bfile*, align 8
  store %struct.bfile* %0, %struct.bfile** %2, align 8
  %3 = load %struct.bfile*, %struct.bfile** %2, align 8
  %4 = getelementptr inbounds %struct.bfile, %struct.bfile* %3, i32 0, i32 0
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %6 = call i32 @fclose(%struct._IO_FILE* %5)
  %7 = load %struct.bfile*, %struct.bfile** %2, align 8
  %8 = bitcast %struct.bfile* %7 to i8*
  call void @free(i8* %8) #3
  ret void
}

declare dso_local i32 @fclose(%struct._IO_FILE*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"Ubuntu clang version 11.0.0-2~ubuntu20.04.1"}
