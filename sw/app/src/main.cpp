#include "delay.h"
#include "gpio.h"

#define LENGTH 53

static constexpr uint32_t led_mask{0xf};

unsigned char Valid = 1;
unsigned char SOS[LENGTH] = {1,0,1,0,1,0,0,0,1,1,1,0,1,1,1,0,1,1,1,0,0,0,1,0,1,0,1};  // SOS ... --- ...
unsigned char Name[LENGTH] = {1,1,1,0,1,0,1,0,0,0,1,0,1,1,1,0,0,0,1,1,1,0,1,1,1,0,0,0,1,0,1,0,0,0,1,0,1,1,1,0,0,0,1,1,1,0,1}; // DAMIAN -.. .- -- .. .- -.
unsigned char Surname[LENGTH] = {1,0,1,0,1,0,1,0,0,0,1,0,0,0,1,0,1,1,1,0,1,0,0,0,1,1,1,0,1,0,1,0,0,0,1,0,1,0,1,1,1,0,0,0,1,0,1,0,1}; // HERDUS .... . .-. -.. ..- ...

int main(){
    while(1)
    {
        gpio.set_mask_bits(led_mask, 0);
        mdelay(3000);
	
        for(unsigned char Index=0; Index<LENGTH; Index++)
        {
            gpio.set_mask_bits(led_mask, (Valid|SOS[Index]<<1|Name[Index]<<2|Surname[Index]<<3));
            mdelay(1000);
        }		
    }
}

