#ifndef _MCP4141_H_
#define _MCP4141_H_

class MCP4141 {
  public:
    MCP4141(uint8_t pin, spi_inst_t *portNum);
    void SetResistance(uint16_t resistance);
    void Increment();
    void Decrement();
  private:
    void SetSPIMode();
    spi_inst_t *spiPort;
    uint8_t csPin;
    uint8_t spiAddress;
};

#endif
