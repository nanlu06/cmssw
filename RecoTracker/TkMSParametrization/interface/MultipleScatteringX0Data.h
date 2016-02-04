#ifndef MultipleScatteringX0Data_H
#define MultipleScatteringX0Data_H

/**
 *
 */

#include <string>
class TFile;
class TH2F;


class SumX0AtEtaDataProvider{ 
public: virtual float sumX0atEta(float eta, float r) const = 0; 
}; 

class MultipleScatteringX0Data : public SumX0AtEtaDataProvider {

public:
  MultipleScatteringX0Data();
  virtual ~MultipleScatteringX0Data();
  int nBinsEta() const;
  float minEta() const;
  float maxEta() const;
  virtual float sumX0atEta(float eta, float r) const;

private:
  std::string fileName();

   TFile * theFile;
   TH2F  * theData;
};

#endif
