c
      double precision la,lo,aa,c,b,yy,cb,cc,sb,sc,x,y
      print *,'stat lat:'
      read *,la
      print *,'stat lon:'
      read *,lo
      print *,'eq lat:'
      read *,y
      print *,'eq lon:'
      read *,x
c     la=75.062
c     lo=-42.302
      yy=3.14159265359/180
      cb=cos((90-y)*yy)
      cc=cos((90-la)*yy)
      sb=sin((90-y)*yy)
      sc=sin((90-la)*yy)
      aa=acos(cb*cc+sb*sc*cos((lo-x)*yy))
      c=acos((cc-cos(aa)*cb)/(sin(aa)*sb))
      if(x.ge.lo.or.x.le.(lo-180))c=2*yy*180-c
      b=acos((cb-cos(aa)*cc)/(sin(aa)*sc))
      if(x.lt.lo.and.x.ge.(lo-180))b=2*yy*180-b
      print *,'Statlat:',la
      print *,'Statlon:',lo
      print *,'Eqlat  :',y
      print *,'Eqlon  :',x
      print *,la,lo,y,x
      print *,'Azimuth:',c/yy
      print *,'B-Az   :',b/yy
      print *,'Delta  :',aa/yy
c     print *,'  epicentre (lat/long)  delta  azimuth  back-azimuth'
c     print *,y,x,aa/yy,c/yy,b/yy
      end

