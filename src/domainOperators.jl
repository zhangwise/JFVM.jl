function +(a::FaceValue, b::FaceValue)
FaceValue(a.domain, 
  a.xvalue+b.xvalue, 
  a.yvalue+b.yvalue,
  a.zvalue+b.zvalue)
end

function -(a::FaceValue, b::FaceValue)
FaceValue(a.domain, 
  a.xvalue-b.xvalue, 
  a.yvalue-b.yvalue,
  a.zvalue-b.zvalue)
end

function .*(a::FaceValue, b::FaceValue)
FaceValue(a.domain, 
  a.xvalue.*b.xvalue, 
  a.yvalue.*b.yvalue,
  a.zvalue.*b.zvalue)
end

function ./(a::FaceValue, b::FaceValue)
FaceValue(a.domain, 
  a.xvalue./b.xvalue, 
  a.yvalue./b.yvalue,
  a.zvalue./b.zvalue)
end

function +(a::Real, b::FaceValue)
FaceValue(b.domain, 
  a.+b.xvalue, 
  a.+b.yvalue,
  a.+b.zvalue)
end

function +(a::FaceValue, b::Real)
FaceValue(a.domain, 
  b.+a.xvalue, 
  b.+a.yvalue,
  b.+a.zvalue)
end

function -(a::Real, b::FaceValue)
FaceValue(b.domain, 
  a.-b.xvalue, 
  a.-b.yvalue,
  a.-b.zvalue)
end

function -(a::FaceValue, b::Real)
FaceValue(a.domain, 
  a.xvalue.-b, 
  a.yvalue.-b,
  a.zvalue.-b)
end

function *(a::Real, b::FaceValue)
FaceValue(b.domain, 
  a.*b.xvalue, 
  a.*b.yvalue,
  a.*b.zvalue)
end

function *(a::FaceValue, b::Real)
FaceValue(a.domain, 
  b.*a.xvalue, 
  b.*a.yvalue,
  b.*a.zvalue)
end

function /(a::Real, b::FaceValue)
FaceValue(b.domain, 
  a./b.xvalue, 
  a./b.yvalue,
  a./b.zvalue)
end

function /(a::FaceValue, b::Real)
FaceValue(a.domain, 
  a.xvalue./b, 
  a.yvalue./b,
  a.zvalue./b)
end
